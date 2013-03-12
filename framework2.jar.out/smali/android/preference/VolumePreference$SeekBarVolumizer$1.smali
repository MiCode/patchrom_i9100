.class Landroid/preference/VolumePreference$SeekBarVolumizer$1;
.super Landroid/database/ContentObserver;
.source "VolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/VolumePreference$SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;


# direct methods
.method constructor <init>(Landroid/preference/VolumePreference$SeekBarVolumizer;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 300
    iput-object p1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 303
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 305
    const-string v1, "CTC"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHM"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 307
    :cond_0
    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    iget-object v1, v1, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    #getter for: Landroid/preference/VolumePreference;->mDisplayType:I
    invoke-static {v1}, Landroid/preference/VolumePreference;->access$000(Landroid/preference/VolumePreference;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    iget-object v1, v1, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    #getter for: Landroid/preference/VolumePreference;->mProfileMode:I
    invoke-static {v1}, Landroid/preference/VolumePreference;->access$100(Landroid/preference/VolumePreference;)I

    move-result v1

    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    iget-object v2, v2, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    #getter for: Landroid/preference/VolumePreference;->mEditMode:I
    invoke-static {v2}, Landroid/preference/VolumePreference;->access$200(Landroid/preference/VolumePreference;)I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 320
    :cond_1
    :goto_0
    return-void

    .line 312
    :cond_2
    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    #getter for: Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$300(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    #getter for: Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$400(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 313
    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    #getter for: Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$400(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    #getter for: Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I
    invoke-static {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$500(Landroid/preference/VolumePreference$SeekBarVolumizer;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 317
    .local v0, volume:I
    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    #getter for: Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I
    invoke-static {v1}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$500(Landroid/preference/VolumePreference$SeekBarVolumizer;)I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 318
    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    #getter for: Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$300(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
