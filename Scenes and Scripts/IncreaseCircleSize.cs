using Godot;
using System;

public partial class IncreaseCircleSize : Node2D {
	
	public Button _button;
	public AnimationPlayer _closeAnim;
	[Export] public ShaderMaterial _shader;
	//public float shaderCopy;
	public override void _Ready() {
		_button = GetNode<Button>("ColorRect/Button");
		_button.Pressed += UpdateCircleSize;

		_closeAnim = GetNode<AnimationPlayer>("ColorRect/AnimationPlayer");
		_closeAnim.Play("Close");
	}
	
	public void UpdateCircleSize() {
		var time =_closeAnim.CurrentAnimationPosition;
		_closeAnim.Seek(time-1);
	}
}
