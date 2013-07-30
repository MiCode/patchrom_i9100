.class Lcom/android/sec_settings/BrightnessPreference$1;
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
    .line 115
    iput-object p1, p0, Lcom/android/sec_settings/BrightnessPreference$1;->this$0:Lcom/android/sec_settings/BrightnessPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/sec_settings/BrightnessPreference$1;->this$0:Lcom/android/sec_settings/BrightnessPreference;

    const/4 v1, -0x1

    #setter for: Lcom/android/sec_settings/BrightnessPreference;->mCurBrightness:I
    invoke-static {v0, v1}, Lcom/android/sec_settings/BrightnessPreference;->access$002(Lcom/android/sec_settings/BrightnessPreference;I)I

    .line 119
    iget-object v0, p0, Lcom/android/sec_settings/BrightnessPreference$1;->this$0:Lcom/android/sec_settings/BrightnessPreference;

    #calls: Lcom/android/sec_settings/BrightnessPreference;->onBrightnessChanged()V
    invoke-static {v0}, Lcom/android/sec_settings/BrightnessPreference;->access$100(Lcom/android/sec_settings/BrightnessPreference;)V

    .line 120
    return-void
.end method
