.class Lcom/android/settings/AirplaneModeEnabler$2;
.super Landroid/database/ContentObserver;
.source "AirplaneModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AirplaneModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirplaneModeEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/AirplaneModeEnabler;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings/AirplaneModeEnabler$2;->this$0:Lcom/android/settings/AirplaneModeEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler$2;->this$0:Lcom/android/settings/AirplaneModeEnabler;

    #calls: Lcom/android/settings/AirplaneModeEnabler;->onAirplaneModeChanged()V
    invoke-static {v0}, Lcom/android/settings/AirplaneModeEnabler;->access$000(Lcom/android/settings/AirplaneModeEnabler;)V

    .line 72
    return-void
.end method
