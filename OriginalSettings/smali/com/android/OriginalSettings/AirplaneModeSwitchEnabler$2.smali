.class Lcom/android/settings/AirplaneModeSwitchEnabler$2;
.super Landroid/database/ContentObserver;
.source "AirplaneModeSwitchEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AirplaneModeSwitchEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/AirplaneModeSwitchEnabler;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$2;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$2;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    #calls: Lcom/android/settings/AirplaneModeSwitchEnabler;->onAirplaneModeChanged()V
    invoke-static {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->access$000(Lcom/android/settings/AirplaneModeSwitchEnabler;)V

    .line 70
    return-void
.end method
