.class Lcom/android/sec_settings/AccessibilitySettings$2;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
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
    .line 193
    iput-object p1, p0, Lcom/android/sec_settings/AccessibilitySettings$2;->this$0:Lcom/android/sec_settings/AccessibilitySettings;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/sec_settings/AccessibilitySettings$2;->this$0:Lcom/android/sec_settings/AccessibilitySettings;

    #calls: Lcom/android/sec_settings/AccessibilitySettings;->updateLockScreenRotationCheckbox()V
    invoke-static {v0}, Lcom/android/sec_settings/AccessibilitySettings;->access$300(Lcom/android/sec_settings/AccessibilitySettings;)V

    .line 197
    return-void
.end method
