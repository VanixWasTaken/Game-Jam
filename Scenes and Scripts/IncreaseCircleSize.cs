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
	[Export] private double timeBeteenFlash;
	[Export] private double secondFlashDuration;
	private double timeLeft;
	private double currentTimeLeft;
	
	private AudioStreamPlayer _mainSoundtrack;
	private AudioStreamPlayer _stressSoundtrack1;
	private AudioStreamPlayer _stressSoundtrack2;
	private AudioStreamPlayer _mainSoundtrack2;
	private AudioStreamPlayer _stressSoundtrack3;
	private AudioStreamPlayer _stressSoundtrack4;
	private AudioStreamPlayer _flash;
	private AudioStreamPlayer _secondFlash;
	private AudioStreamPlayer _bzzt;
	private int _randomZahl;
	private bool alreadyFlashed = false;

	private Sprite2D _light1;
	private Sprite2D _light2;
	private Sprite2D _light3;
	private Sprite2D _light4;
	
	public override void _Ready() {
		_button = GetNode<Button>("ColorRect/Button");
		_button.Pressed += UpdateCircleSize;
		Random rnd = new Random();
		int _randomZahl = rnd.Next (1,3);
		_mainSoundtrack = GetNode<AudioStreamPlayer>("AudioStreamPlayer");
		_stressSoundtrack1 = GetNode<AudioStreamPlayer>("AudioStreamPlayer2");
		_stressSoundtrack2 = GetNode<AudioStreamPlayer>("AudioStreamPlayer3");
		_mainSoundtrack2 = GetNode<AudioStreamPlayer>("AudioStreamPlayer4");
		_stressSoundtrack3 = GetNode<AudioStreamPlayer>("AudioStreamPlayer5");
		_stressSoundtrack4 = GetNode<AudioStreamPlayer>("AudioStreamPlayer6");
		_flash = GetNode<AudioStreamPlayer>("AudioStreamPlayer7");
		_secondFlash = GetNode<AudioStreamPlayer>("AudioStreamPlayer8");
		_bzzt = GetNode<AudioStreamPlayer>("AudioStreamPlayer9");
		
		
		_closeAnim = GetNode<AnimationPlayer>("ColorRect/AnimationPlayer");
		_closeAnim.Play("Close");
		
		_cameraShake = GetNode<CameraShake>("/root/Level/Player/Camera2D");
		
		Timer timer = new Timer();
		timer.WaitTime = flashIntervall;
		timer.Timeout += Flash;
		AddChild(timer);
		timer.Start();

		_light1 = GetNode<Sprite2D>("Sprite2D");
		_light2 = GetNode<Sprite2D>("Sprite2D2");
		_light3 = GetNode<Sprite2D>("Sprite2D3");
		_light4 = GetNode<Sprite2D>("Sprite2D4");

		_light1.Visible = false;
		_light2.Visible = false;
		_light3.Visible = false;
		_light4.Visible = false;
		
		Timer timer2 = new Timer();
		timer2.WaitTime = 5;
		timer2.Timeout += StartMusic;
		timer2.OneShot = true;
		AddChild(timer2);
		timer2.Start();
		
		/*_mainSoundtrack.Play();
		_stressSoundtrack1.Play();
		_stressSoundtrack2.Play();
		*/

	}

	public void StartMusic()
	{
		Random rnd = new Random();
		int _randomZahl = rnd.Next (1,3);
		if (_randomZahl == 1f)
		{
			_mainSoundtrack.Play();
			_stressSoundtrack1.Play();
			_stressSoundtrack2.Play();
		}
		
		else if (_randomZahl == 2f)
		{
			_mainSoundtrack2.Play();
			_stressSoundtrack3.Play();
			_stressSoundtrack4.Play();
		}
	}
	
	public void UpdateCircleSize() {
		var time =_closeAnim.CurrentAnimationPosition;
		_closeAnim.Seek(time-4);
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
		_flash.Play();

		_light1.Visible = true;
		_light2.Visible = true;
		
		
		Timer timer = new Timer();
		timer.WaitTime = flashDuration;
		timer.Timeout += StopFlash;
		timer.OneShot = true;
		AddChild(timer);
		timer.Start();
	}
	
	//Gets called when timer flash duration = 0, Plays circle anim
	public void StopFlash() {
		GD.Print("StopFlash");
		_closeAnim.Seek(timeLeft);
		_closeAnim.Play();
		
		_light1.Visible = false;
		_light2.Visible = false;
		_light3.Visible = false;
		_light4.Visible = false;

		//Checks if it is the first or second Flash
		if (alreadyFlashed == false)
		{
			Timer timer = new Timer();
			timer.WaitTime = timeBeteenFlash;
			timer.Timeout += SecondFlash;
			timer.OneShot = true;
			AddChild(timer);
			timer.Start();
			alreadyFlashed = true;
		}
		else
		{
			alreadyFlashed = false;
		}
	}

	public void SecondFlash()
	{
		timeLeft =_closeAnim.CurrentAnimationPosition;
		_closeAnim.Stop();
		_secondFlash.Play();
		
		_light3.Visible = true;
		_light4.Visible = true;
		
		Timer timer = new Timer();
		timer.WaitTime = secondFlashDuration;
		timer.Timeout += StopFlash;
		timer.OneShot = true;
		AddChild(timer);
		timer.Start();
		
	}
	
	//gets current anim time and starts shake, kim sounds hier
	public override void _Process(double delta) {
		currentTimeLeft =_closeAnim.CurrentAnimationPosition;

		if(currentTimeLeft <= 5)
		{
			_cameraShake.ShakeCamera(0.1f,0.1f);
			

			_mainSoundtrack.VolumeDb = 0f;
			_stressSoundtrack1.VolumeDb = -80f;
			_stressSoundtrack2.VolumeDb = -80f;
			_mainSoundtrack2.VolumeDb = 0f;
			_stressSoundtrack3.VolumeDb = -80f;
			_stressSoundtrack4.VolumeDb = -80f;
			
		}
		
		else if(currentTimeLeft <= 10 && currentTimeLeft >=5)
		{
			_cameraShake.ShakeCamera(0.1f,0.5f);
			
			_mainSoundtrack.VolumeDb = -80f;
			_stressSoundtrack1.VolumeDb = 0f;
			_stressSoundtrack2.VolumeDb = -80f;
			_mainSoundtrack2.VolumeDb = -80f;
			_stressSoundtrack3.VolumeDb = 0f;
			_stressSoundtrack4.VolumeDb = -80f;
		}
		
		else if(currentTimeLeft <= 15 && currentTimeLeft >= 10)
		{
			_cameraShake.ShakeCamera(0.1f,1f);
			
			_mainSoundtrack.VolumeDb = -80f;
			_stressSoundtrack1.VolumeDb = -80f;
			_stressSoundtrack2.VolumeDb = 0f;
			_mainSoundtrack2.VolumeDb = -80f;
			_stressSoundtrack3.VolumeDb = -80f;
			_stressSoundtrack4.VolumeDb = 0f;
		}
		
		else if(currentTimeLeft >= 14)
		{
			_bzzt.Play();
		}
		
	}
}

