.class Lcom/android/sec_settings/BrightnessPreference$3;
.super Landroid/database/ContentObserver;
.source "BrightnessPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/BrightnessPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/BrightnessPreference;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/BrightnessPreference;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/sec_settings/BrightnessPreference$3;->this$0:Lcom/android/sec_settings/BrightnessPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/sec_settings/BrightnessPreference$3;->this$0:Lcom/android/sec_settings/BrightnessPreference;

    #calls: Lcom/android/sec_settings/BrightnessPreference;->onAutoBrightnessDetailChanged()V
    invoke-static {v0}, Lcom/android/sec_settings/BrightnessPreference;->access$300(Lcom/android/sec_settings/BrightnessPreference;)V

    .line 134
    return-void
.end method
