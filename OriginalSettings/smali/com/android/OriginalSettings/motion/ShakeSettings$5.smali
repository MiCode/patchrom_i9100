.class Lcom/android/OriginalSettings/motion/ShakeSettings$5;
.super Ljava/lang/Object;
.source "ShakeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/motion/ShakeSettings;->showGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/motion/ShakeSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/motion/ShakeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/OriginalSettings/motion/ShakeSettings$5;->this$0:Lcom/android/OriginalSettings/motion/ShakeSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeSettings$5;->this$0:Lcom/android/OriginalSettings/motion/ShakeSettings;

    #calls: Lcom/android/OriginalSettings/motion/ShakeSettings;->stopAnimation()V
    invoke-static {v0}, Lcom/android/OriginalSettings/motion/ShakeSettings;->access$600(Lcom/android/OriginalSettings/motion/ShakeSettings;)V

    .line 211
    return-void
.end method
