.class Lcom/android/OriginalSettings/AccessibilitySettings$1;
.super Landroid/os/Handler;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/AccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$1;->this$0:Lcom/android/OriginalSettings/AccessibilitySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 163
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings$1;->this$0:Lcom/android/OriginalSettings/AccessibilitySettings;

    #calls: Lcom/android/OriginalSettings/AccessibilitySettings;->loadInstalledServices()V
    invoke-static {v0}, Lcom/android/OriginalSettings/AccessibilitySettings;->access$100(Lcom/android/OriginalSettings/AccessibilitySettings;)V

    .line 164
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings$1;->this$0:Lcom/android/OriginalSettings/AccessibilitySettings;

    #calls: Lcom/android/OriginalSettings/AccessibilitySettings;->updateServicesPreferences()V
    invoke-static {v0}, Lcom/android/OriginalSettings/AccessibilitySettings;->access$200(Lcom/android/OriginalSettings/AccessibilitySettings;)V

    .line 165
    return-void
.end method
