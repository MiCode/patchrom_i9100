.class Lcom/android/OriginalSettings/fmm/AlertRecipients$2;
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
    .line 68
    iput-object p1, p0, Lcom/android/OriginalSettings/fmm/AlertRecipients$2;->this$0:Lcom/android/OriginalSettings/fmm/AlertRecipients;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_TAB"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, phonebookIntent:Landroid/content/Intent;
    const-string v1, "additional"

    const-string v2, "phone-multi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v1, "existingRecipientCount"

    iget-object v2, p0, Lcom/android/OriginalSettings/fmm/AlertRecipients$2;->this$0:Lcom/android/OriginalSettings/fmm/AlertRecipients;

    #getter for: Lcom/android/OriginalSettings/fmm/AlertRecipients;->PlusLayout:Lcom/android/OriginalSettings/fmm/RecipientsPlusView;
    invoke-static {v2}, Lcom/android/OriginalSettings/fmm/AlertRecipients;->access$000(Lcom/android/OriginalSettings/fmm/AlertRecipients;)Lcom/android/OriginalSettings/fmm/RecipientsPlusView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->getCountFilledRecipient()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    const-string v1, "maxRecipientCount"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    iget-object v1, p0, Lcom/android/OriginalSettings/fmm/AlertRecipients$2;->this$0:Lcom/android/OriginalSettings/fmm/AlertRecipients;

    const/16 v2, 0x65

    invoke-virtual {v1, v0, v2}, Lcom/android/OriginalSettings/fmm/AlertRecipients;->startActivityForResult(Landroid/content/Intent;I)V

    .line 76
    return-void
.end method
