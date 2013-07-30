.class Lcom/android/sec_settings/RingerVolumePreference$1;
.super Landroid/os/Handler;
.source "RingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/RingerVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/RingerVolumePreference;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/RingerVolumePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/sec_settings/RingerVolumePreference$1;->this$0:Lcom/android/sec_settings/RingerVolumePreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/sec_settings/RingerVolumePreference$1;->this$0:Lcom/android/sec_settings/RingerVolumePreference;

    #calls: Lcom/android/sec_settings/RingerVolumePreference;->updateSlidersAndMutedStates()V
    invoke-static {v0}, Lcom/android/sec_settings/RingerVolumePreference;->access$000(Lcom/android/sec_settings/RingerVolumePreference;)V

    .line 166
    return-void
.end method
