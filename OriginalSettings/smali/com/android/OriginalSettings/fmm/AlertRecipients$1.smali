.class Lcom/android/OriginalSettings/fmm/AlertRecipients$1;
.super Ljava/lang/Object;
.source "AlertRecipients.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/fmm/AlertRecipients;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/fmm/AlertRecipients;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/fmm/AlertRecipients;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/OriginalSettings/fmm/AlertRecipients$1;->this$0:Lcom/android/OriginalSettings/fmm/AlertRecipients;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/OriginalSettings/fmm/AlertRecipients$1;->this$0:Lcom/android/OriginalSettings/fmm/AlertRecipients;

    #getter for: Lcom/android/OriginalSettings/fmm/AlertRecipients;->PlusLayout:Lcom/android/OriginalSettings/fmm/RecipientsPlusView;
    invoke-static {v0}, Lcom/android/OriginalSettings/fmm/AlertRecipients;->access$000(Lcom/android/OriginalSettings/fmm/AlertRecipients;)Lcom/android/OriginalSettings/fmm/RecipientsPlusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->DoSave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/OriginalSettings/fmm/AlertRecipients$1;->this$0:Lcom/android/OriginalSettings/fmm/AlertRecipients;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/fmm/AlertRecipients;->finish()V

    .line 61
    :cond_0
    return-void
.end method
