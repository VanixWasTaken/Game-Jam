using Godot;
using System;

public partial class IncreaseCircleSize : Control
{
	public Button _button;
	public AnimationPlayer _closeAnim;
	[Export] public ShaderMaterial _shader;
	//public float shaderCopy;
	public override void _Ready()
	{
		GD.Print("Ayo");

		_button = GetNode<Button>("ColorRect/Button");
		_button.Pressed += UpdateCircleSize;

		_closeAnim = GetNode<AnimationPlayer>("ColorRect/AnimationPlayer");
		_closeAnim.Play("Close");
	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
	}

	public void UpdateCircleSize()
	{
		GD.Print("UWu");
		//Gets current Animation time 
		var time =_closeAnim.CurrentAnimationPosition;
		//Resets current animation time by 1
		_closeAnim.Seek(time-1);
	}
}
