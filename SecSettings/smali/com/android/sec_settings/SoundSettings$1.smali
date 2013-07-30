.class Lcom/android/sec_settings/SoundSettings$1;
.super Landroid/os/Handler;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/SoundSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/sec_settings/SoundSettings$1;->this$0:Lcom/android/sec_settings/SoundSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 191
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 210
    :goto_0
    return-void

    .line 193
    :pswitch_0
    iget-object v0, p0, Lcom/android/sec_settings/SoundSettings$1;->this$0:Lcom/android/sec_settings/SoundSettings;

    #getter for: Lcom/android/sec_settings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/sec_settings/SoundSettings;->access$000(Lcom/android/sec_settings/SoundSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 196
    :pswitch_1
    iget-object v0, p0, Lcom/android/sec_settings/SoundSettings$1;->this$0:Lcom/android/sec_settings/SoundSettings;

    #getter for: Lcom/android/sec_settings/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/sec_settings/SoundSettings;->access$100(Lcom/android/sec_settings/SoundSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 200
    :pswitch_2
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/sec_settings/SoundSettings$1;->this$0:Lcom/android/sec_settings/SoundSettings;

    #getter for: Lcom/android/sec_settings/SoundSettings;->mLoadSoundEffectRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/sec_settings/SoundSettings;->access$200(Lcom/android/sec_settings/SoundSettings;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 203
    :pswitch_3
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/sec_settings/SoundSettings$1;->this$0:Lcom/android/sec_settings/SoundSettings;

    #getter for: Lcom/android/sec_settings/SoundSettings;->mUnloadSoundEffectRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/sec_settings/SoundSettings;->access$300(Lcom/android/sec_settings/SoundSettings;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 206
    :pswitch_4
    iget-object v0, p0, Lcom/android/sec_settings/SoundSettings$1;->this$0:Lcom/android/sec_settings/SoundSettings;

    #getter for: Lcom/android/sec_settings/SoundSettings;->mRingtone2Preference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/sec_settings/SoundSettings;->access$400(Lcom/android/sec_settings/SoundSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
