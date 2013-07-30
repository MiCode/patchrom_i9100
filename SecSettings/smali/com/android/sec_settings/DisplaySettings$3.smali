.class Lcom/android/sec_settings/DisplaySettings$3;
.super Landroid/database/ContentObserver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/DisplaySettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/sec_settings/DisplaySettings$3;->this$0:Lcom/android/sec_settings/DisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings$3;->this$0:Lcom/android/sec_settings/DisplaySettings;

    #calls: Lcom/android/sec_settings/DisplaySettings;->updateAccelerometerRotationSecondCheckbox()V
    invoke-static {v0}, Lcom/android/sec_settings/DisplaySettings;->access$200(Lcom/android/sec_settings/DisplaySettings;)V

    .line 249
    return-void
.end method
