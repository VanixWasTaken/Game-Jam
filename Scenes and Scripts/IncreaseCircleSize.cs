using Godot;
using System;

public partial class IncreaseCircleSize : Node2D {
	
	private CameraShake _cameraShake;
	public Button _button;
	public AnimationPlayer _closeAnim;
	public Node sceneToLoad;
	[Export] public ShaderMaterial _shader;
	[Export] public double flashIntervall;
	[Export] public double flashDuration;
	private double timeLeft;
	private double currentTimeLeft;
	private AudioStreamPlayer _mainSoundtrack;
	private AudioStreamPlayer _stressSoundtrack1;
	private AudioStreamPlayer _stressSoundtrack2;
	
	public override void _Ready() {
		_button = GetNode<Button>("ColorRect/Button");
		_button.Pressed += UpdateCircleSize;
		_mainSoundtrack = GetNode<AudioStreamPlayer>("AudioStreamPlayer");
		_stressSoundtrack1 = GetNode<AudioStreamPlayer>("AudioStreamPlayer2");
		_stressSoundtrack2 = GetNode<AudioStreamPlayer>("AudioStreamPlayer3");

		_closeAnim = GetNode<AnimationPlayer>("ColorRect/AnimationPlayer");
		_closeAnim.Play("Close");
		
		_cameraShake = GetNode<CameraShake>("/root/Level/Player/Camera2D");
		
		Timer timer = new Timer();
		timer.WaitTime = flashIntervall;
		timer.Timeout += Flash;
		AddChild(timer);
		timer.Start();
		
		_mainSoundtrack.Play();
		_stressSoundtrack1.Play();
		_stressSoundtrack2.Play();
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
	
	//gets current anim time and starts shake, kim sounds hier
	public override void _Process(double delta) {
		currentTimeLeft =_closeAnim.CurrentAnimationPosition;
		
		/*
		if (currentTimeLeft < 4)
		{
			//_cameraShake.ShakeCamera(5f,0.1f);
			GD.Print("1");
		}
		
		
		if(currentTimeLeft >= 7 && currentTimeLeft <= 6)
		{
			_cameraShake.ShakeCamera(0.1f,0.1f);
			GD.Print("2");
		}
		
		else if(currentTimeLeft <= 8 && currentTimeLeft >=7)
		{
			_cameraShake.ShakeCamera(0.1f,0.2f);
			GD.Print("3");
		}
		
		else if(currentTimeLeft <= 9 && currentTimeLeft >= 8)
		{
			_cameraShake.ShakeCamera(0.1f,0.3f);
			GD.Print("4");
		}
		
		else if(currentTimeLeft <= 10.5 && currentTimeLeft >= 9)
		{
			_cameraShake.ShakeCamera(0.1f,0.5f);
			GD.Print("5");
		}
		*/
		if(currentTimeLeft >= 0 && currentTimeLeft <= 5)
		{
			_cameraShake.ShakeCamera(0.1f,0.1f);
			GD.Print("2");
			
			
			
			
			_mainSoundtrack.VolumeDb = 0f;
			_stressSoundtrack1.VolumeDb = -80f;
			_stressSoundtrack2.VolumeDb = -80f;
			
		}
		
		else if(currentTimeLeft <= 10 && currentTimeLeft >=5)
		{
			_cameraShake.ShakeCamera(0.1f,0.2f);
			GD.Print("3");
			
			_mainSoundtrack.VolumeDb = -80f;
			_stressSoundtrack1.VolumeDb = 0f;
			_stressSoundtrack2.VolumeDb = -80f;
		}
		
		else if(currentTimeLeft <= 15 && currentTimeLeft >= 10)
		{
			_cameraShake.ShakeCamera(0.1f,0.3f);
			GD.Print("4");
			
			_mainSoundtrack.VolumeDb = -80f;
			_stressSoundtrack1.VolumeDb = -80f;
			_stressSoundtrack2.VolumeDb = 0f;
		}
		
	}
}

