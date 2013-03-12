.class Lcom/android/server/InputMethodManagerService$BrightnessContentObserver;
.super Landroid/database/ContentObserver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BrightnessContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 1
    .parameter

    .prologue
    .line 652
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$BrightnessContentObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    .line 653
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 654
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 657
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$BrightnessContentObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 658
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$602(Z)Z

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$602(Z)Z

    .line 661
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$200()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 662
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$402(I)I

    goto :goto_0
.end method
