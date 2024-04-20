using Godot;
using System;

public partial class ControlShake : Node2D
{
	private CameraShake _cameraShake;
	public override void _Ready()
	{
		_cameraShake = GetNode<CameraShake>("Camera2D");
		//_cameraShake.ShakeCamera(10f,0.5f);

	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
	}
	
	
}
