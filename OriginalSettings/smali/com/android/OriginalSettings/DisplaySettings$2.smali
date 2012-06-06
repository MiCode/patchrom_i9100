.class Lcom/android/OriginalSettings/DisplaySettings$2;
.super Landroid/database/ContentObserver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/DisplaySettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/OriginalSettings/DisplaySettings$2;->this$0:Lcom/android/OriginalSettings/DisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/OriginalSettings/DisplaySettings$2;->this$0:Lcom/android/OriginalSettings/DisplaySettings;

    #calls: Lcom/android/OriginalSettings/DisplaySettings;->updateAccelerometerRotationCheckbox()V
    invoke-static {v0}, Lcom/android/OriginalSettings/DisplaySettings;->access$100(Lcom/android/OriginalSettings/DisplaySettings;)V

    .line 149
    return-void
.end method
