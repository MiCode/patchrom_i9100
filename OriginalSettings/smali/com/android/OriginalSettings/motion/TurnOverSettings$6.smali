.class Lcom/android/OriginalSettings/motion/TurnOverSettings$6;
.super Ljava/lang/Object;
.source "TurnOverSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/motion/TurnOverSettings;->showUseRingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/motion/TurnOverSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/motion/TurnOverSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/OriginalSettings/motion/TurnOverSettings$6;->this$0:Lcom/android/OriginalSettings/motion/TurnOverSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/TurnOverSettings$6;->this$0:Lcom/android/OriginalSettings/motion/TurnOverSettings;

    const/4 v1, 0x0

    #calls: Lcom/android/OriginalSettings/motion/TurnOverSettings;->startTryActually(Z)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/motion/TurnOverSettings;->access$600(Lcom/android/OriginalSettings/motion/TurnOverSettings;Z)V

    .line 256
    return-void
.end method
