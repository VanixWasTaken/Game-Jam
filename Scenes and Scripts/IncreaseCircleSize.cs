using Godot;
using System;

public partial class IncreaseCircleSize : Node2D {
	
	public Button _button;
	public AnimationPlayer _closeAnim;
	public Node sceneToLoad;
	[Export] public ShaderMaterial _shader;
	//public float shaderCopy;
	public override void _Ready() {
		_button = GetNode<Button>("ColorRect/Button");
		_button.Pressed += UpdateCircleSize;

		_closeAnim = GetNode<AnimationPlayer>("ColorRect/AnimationPlayer");
		_closeAnim.Play("Close");
		
	}
	
	public override void _Process(double delta)
	{
		
	}
	
	public void UpdateCircleSize() {
		var time =_closeAnim.CurrentAnimationPosition;
		_closeAnim.Seek(time-1);
	}
	
	//Go to Game over screen if Animation hits zero
	private void _on_animation_player_animation_finished(StringName anim_name)
	{
		GD.Print("Deeeeead");
		GetTree().ChangeSceneToFile("res://Scenes and Scripts/game_over.tscn");

	}
}

