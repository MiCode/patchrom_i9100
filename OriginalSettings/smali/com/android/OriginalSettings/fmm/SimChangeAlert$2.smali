.class Lcom/android/settings/fmm/SimChangeAlert$2;
.super Ljava/lang/Object;
.source "SimChangeAlert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/SimChangeAlert;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fmm/SimChangeAlert;


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/SimChangeAlert;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/settings/fmm/SimChangeAlert$2;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 202
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_TAB"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, phonebookIntent:Landroid/content/Intent;
    const-string v1, "additional"

    const-string v2, "phone-multi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const-string v1, "existingRecipientCount"

    iget-object v2, p0, Lcom/android/settings/fmm/SimChangeAlert$2;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v2}, Lcom/android/settings/fmm/SimChangeAlert;->getCountFilledRecipient()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    const-string v1, "maxRecipientCount"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    iget-object v1, p0, Lcom/android/settings/fmm/SimChangeAlert$2;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    const/16 v2, 0x65

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/fmm/SimChangeAlert;->startActivityForResult(Landroid/content/Intent;I)V

    .line 207
    return-void
.end method
