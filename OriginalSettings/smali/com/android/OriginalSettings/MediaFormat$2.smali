.class Lcom/android/OriginalSettings/MediaFormat$2;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/MediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/MediaFormat;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/MediaFormat;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/OriginalSettings/MediaFormat$2;->this$0:Lcom/android/OriginalSettings/MediaFormat;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/OriginalSettings/MediaFormat$2;->this$0:Lcom/android/OriginalSettings/MediaFormat;

    const/16 v1, 0x37

    #calls: Lcom/android/OriginalSettings/MediaFormat;->runKeyguardConfirmation(I)Z
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/MediaFormat;->access$000(Lcom/android/OriginalSettings/MediaFormat;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/OriginalSettings/MediaFormat$2;->this$0:Lcom/android/OriginalSettings/MediaFormat;

    #calls: Lcom/android/OriginalSettings/MediaFormat;->establishFinalConfirmationState()V
    invoke-static {v0}, Lcom/android/OriginalSettings/MediaFormat;->access$100(Lcom/android/OriginalSettings/MediaFormat;)V

    .line 110
    :cond_0
    return-void
.end method
