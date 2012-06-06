.class Lcom/android/OriginalSettings/fmm/SimChangeAlert$1;
.super Ljava/lang/Object;
.source "SimChangeAlert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/fmm/SimChangeAlert;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/fmm/SimChangeAlert;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/fmm/SimChangeAlert;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert$1;->this$0:Lcom/android/OriginalSettings/fmm/SimChangeAlert;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    .line 118
    iget-object v0, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert$1;->this$0:Lcom/android/OriginalSettings/fmm/SimChangeAlert;

    iget-object v1, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert$1;->this$0:Lcom/android/OriginalSettings/fmm/SimChangeAlert;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040042

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    #setter for: Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mDialogLayout:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->access$002(Lcom/android/OriginalSettings/fmm/SimChangeAlert;Landroid/view/View;)Landroid/view/View;

    .line 119
    iget-object v1, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert$1;->this$0:Lcom/android/OriginalSettings/fmm/SimChangeAlert;

    iget-object v0, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert$1;->this$0:Lcom/android/OriginalSettings/fmm/SimChangeAlert;

    #getter for: Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mDialogLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->access$000(Lcom/android/OriginalSettings/fmm/SimChangeAlert;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f080093

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    #setter for: Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mText:Landroid/widget/EditText;
    invoke-static {v1, v0}, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->access$102(Lcom/android/OriginalSettings/fmm/SimChangeAlert;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 120
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert$1;->this$0:Lcom/android/OriginalSettings/fmm/SimChangeAlert;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0726

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert$1;->this$0:Lcom/android/OriginalSettings/fmm/SimChangeAlert;

    #getter for: Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mDialogLayout:Landroid/view/View;
    invoke-static {v1}, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->access$000(Lcom/android/OriginalSettings/fmm/SimChangeAlert;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/OriginalSettings/fmm/SimChangeAlert$1$1;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/fmm/SimChangeAlert$1$1;-><init>(Lcom/android/OriginalSettings/fmm/SimChangeAlert$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 147
    return-void
.end method
