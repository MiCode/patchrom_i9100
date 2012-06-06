.class Lcom/android/OriginalSettings/motion/PanSettings$5;
.super Ljava/lang/Object;
.source "PanSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/motion/PanSettings;->showGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/motion/PanSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/motion/PanSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/OriginalSettings/motion/PanSettings$5;->this$0:Lcom/android/OriginalSettings/motion/PanSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/PanSettings$5;->this$0:Lcom/android/OriginalSettings/motion/PanSettings;

    #calls: Lcom/android/OriginalSettings/motion/PanSettings;->stopAnimation()V
    invoke-static {v0}, Lcom/android/OriginalSettings/motion/PanSettings;->access$600(Lcom/android/OriginalSettings/motion/PanSettings;)V

    .line 224
    return-void
.end method
