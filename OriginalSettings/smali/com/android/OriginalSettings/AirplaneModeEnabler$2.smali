.class Lcom/android/OriginalSettings/AirplaneModeEnabler$2;
.super Landroid/database/ContentObserver;
.source "AirplaneModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/AirplaneModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/AirplaneModeEnabler;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/AirplaneModeEnabler;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/OriginalSettings/AirplaneModeEnabler$2;->this$0:Lcom/android/OriginalSettings/AirplaneModeEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/OriginalSettings/AirplaneModeEnabler$2;->this$0:Lcom/android/OriginalSettings/AirplaneModeEnabler;

    #calls: Lcom/android/OriginalSettings/AirplaneModeEnabler;->onAirplaneModeChanged()V
    invoke-static {v0}, Lcom/android/OriginalSettings/AirplaneModeEnabler;->access$000(Lcom/android/OriginalSettings/AirplaneModeEnabler;)V

    .line 71
    return-void
.end method
