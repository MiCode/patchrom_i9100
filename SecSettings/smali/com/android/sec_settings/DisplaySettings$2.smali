.class Lcom/android/sec_settings/DisplaySettings$2;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
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
.method constructor <init>(Lcom/android/sec_settings/DisplaySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/sec_settings/DisplaySettings$2;->this$0:Lcom/android/sec_settings/DisplaySettings;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings$2;->this$0:Lcom/android/sec_settings/DisplaySettings;

    #calls: Lcom/android/sec_settings/DisplaySettings;->updateAccelerometerRotationCheckbox()V
    invoke-static {v0}, Lcom/android/sec_settings/DisplaySettings;->access$100(Lcom/android/sec_settings/DisplaySettings;)V

    .line 242
    return-void
.end method
