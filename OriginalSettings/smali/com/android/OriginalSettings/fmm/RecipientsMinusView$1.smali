.class Lcom/android/OriginalSettings/fmm/RecipientsMinusView$1;
.super Ljava/lang/Object;
.source "RecipientsMinusView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/fmm/RecipientsMinusView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/fmm/RecipientsMinusView;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/fmm/RecipientsMinusView;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/OriginalSettings/fmm/RecipientsMinusView$1;->this$0:Lcom/android/OriginalSettings/fmm/RecipientsMinusView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/OriginalSettings/fmm/RecipientsMinusView$1;->this$0:Lcom/android/OriginalSettings/fmm/RecipientsMinusView;

    #getter for: Lcom/android/OriginalSettings/fmm/RecipientsMinusView;->CurrentView:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;->access$000(Lcom/android/OriginalSettings/fmm/RecipientsMinusView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 52
    iget-object v0, p0, Lcom/android/OriginalSettings/fmm/RecipientsMinusView$1;->this$0:Lcom/android/OriginalSettings/fmm/RecipientsMinusView;

    const/4 v1, 0x0

    #setter for: Lcom/android/OriginalSettings/fmm/RecipientsMinusView;->VisibleView:Z
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;->access$102(Lcom/android/OriginalSettings/fmm/RecipientsMinusView;Z)Z

    .line 53
    return-void
.end method
