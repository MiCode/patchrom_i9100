.class Lcom/android/OriginalSettings/RingerVolumePreference$1;
.super Landroid/os/Handler;
.source "RingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/RingerVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/RingerVolumePreference;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/RingerVolumePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/OriginalSettings/RingerVolumePreference$1;->this$0:Lcom/android/OriginalSettings/RingerVolumePreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference$1;->this$0:Lcom/android/OriginalSettings/RingerVolumePreference;

    #calls: Lcom/android/OriginalSettings/RingerVolumePreference;->updateSlidersAndMutedStates()V
    invoke-static {v0}, Lcom/android/OriginalSettings/RingerVolumePreference;->access$000(Lcom/android/OriginalSettings/RingerVolumePreference;)V

    .line 118
    return-void
.end method
