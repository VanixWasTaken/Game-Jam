using Godot;
using System;

public partial class IncreaseCircleSize : Node2D {
	
	public Button _button;
	public AnimationPlayer _closeAnim;
	public Node sceneToLoad;
	[Export] public ShaderMaterial _shader;
	[Export] public double flashIntervall;
	[Export] public double flashDuration;
	private double timeLeft;
	public override void _Ready() {
		_button = GetNode<Button>("ColorRect/Button");
		_button.Pressed += UpdateCircleSize;

		_closeAnim = GetNode<AnimationPlayer>("ColorRect/AnimationPlayer");
		_closeAnim.Play("Close");
		
		Timer timer = new Timer();
		timer.WaitTime = flashIntervall;
		timer.Timeout += Flash;
		AddChild(timer);
		timer.Start();
	}
	
	public void UpdateCircleSize() {
		var time =_closeAnim.CurrentAnimationPosition;
		_closeAnim.Seek(time-2);
	}
	//Go to Game over screen if Animation hits zero
	private void _on_animation_player_animation_finished(StringName anim_name) {
		GD.Print("Deeeeead");
		GetTree().ChangeSceneToFile("res://Scenes and Scripts/game_over.tscn");
	}
	//Stops circel Anim, Starts timer for flash duration
	public void Flash(){
		timeLeft =_closeAnim.CurrentAnimationPosition;
		_closeAnim.Stop();
		
		Timer timer = new Timer();
		timer.WaitTime = flashDuration;
		timer.Timeout += StopFlash;
		timer.OneShot = true;
		AddChild(timer);
		timer.Start();
	}
	//Gets called when timer flash duration = 0, Plays circle anim
	public void StopFlash() {
		_closeAnim.Seek(timeLeft);
		_closeAnim.Play();
	}
}

