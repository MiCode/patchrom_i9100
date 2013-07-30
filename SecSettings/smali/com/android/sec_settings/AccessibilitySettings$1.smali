.class Lcom/android/sec_settings/AccessibilitySettings$1;
.super Landroid/os/Handler;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/AccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/sec_settings/AccessibilitySettings$1;->this$0:Lcom/android/sec_settings/AccessibilitySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 186
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 187
    iget-object v0, p0, Lcom/android/sec_settings/AccessibilitySettings$1;->this$0:Lcom/android/sec_settings/AccessibilitySettings;

    #calls: Lcom/android/sec_settings/AccessibilitySettings;->loadInstalledServices()V
    invoke-static {v0}, Lcom/android/sec_settings/AccessibilitySettings;->access$100(Lcom/android/sec_settings/AccessibilitySettings;)V

    .line 188
    iget-object v0, p0, Lcom/android/sec_settings/AccessibilitySettings$1;->this$0:Lcom/android/sec_settings/AccessibilitySettings;

    #calls: Lcom/android/sec_settings/AccessibilitySettings;->updateServicesPreferences()V
    invoke-static {v0}, Lcom/android/sec_settings/AccessibilitySettings;->access$200(Lcom/android/sec_settings/AccessibilitySettings;)V

    .line 189
    return-void
.end method
