.class Lcom/android/OriginalSettings/motion/TiltSettings$3;
.super Ljava/lang/Object;
.source "TiltSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/motion/TiltSettings;->showMotionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/motion/TiltSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/motion/TiltSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/OriginalSettings/motion/TiltSettings$3;->this$0:Lcom/android/OriginalSettings/motion/TiltSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 182
    const-string v0, "TiltSettings"

    const-string v1, "use motion dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/TiltSettings$3;->this$0:Lcom/android/OriginalSettings/motion/TiltSettings;

    #calls: Lcom/android/OriginalSettings/motion/TiltSettings;->updateCheckedUI()V
    invoke-static {v0}, Lcom/android/OriginalSettings/motion/TiltSettings;->access$300(Lcom/android/OriginalSettings/motion/TiltSettings;)V

    .line 184
    return-void
.end method
