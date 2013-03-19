.class Lcom/android/settings/AirplaneModeSettings$2;
.super Landroid/database/ContentObserver;
.source "AirplaneModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AirplaneModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirplaneModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AirplaneModeSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/settings/AirplaneModeSettings$2;->this$0:Lcom/android/settings/AirplaneModeSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSettings$2;->this$0:Lcom/android/settings/AirplaneModeSettings;

    #calls: Lcom/android/settings/AirplaneModeSettings;->onAirplaneModeChanged()V
    invoke-static {v0}, Lcom/android/settings/AirplaneModeSettings;->access$000(Lcom/android/settings/AirplaneModeSettings;)V

    .line 60
    return-void
.end method
