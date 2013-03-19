.class Lcom/android/settings/fmm/SimChangeAlert$1$1;
.super Ljava/lang/Object;
.source "SimChangeAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/SimChangeAlert$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fmm/SimChangeAlert$1;


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/SimChangeAlert$1;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/settings/fmm/SimChangeAlert$1$1;->this$1:Lcom/android/settings/fmm/SimChangeAlert$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v7, 0x0

    .line 173
    const/4 v2, 0x0

    .line 174
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/fmm/SimChangeAlert$1$1;->this$1:Lcom/android/settings/fmm/SimChangeAlert$1;

    iget-object v4, v4, Lcom/android/settings/fmm/SimChangeAlert$1;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    #getter for: Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/settings/fmm/SimChangeAlert;->access$200(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 175
    iget-object v4, p0, Lcom/android/settings/fmm/SimChangeAlert$1$1;->this$1:Lcom/android/settings/fmm/SimChangeAlert$1;

    iget-object v4, v4, Lcom/android/settings/fmm/SimChangeAlert$1;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    #getter for: Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/settings/fmm/SimChangeAlert;->access$200(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    .line 176
    .local v0, ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->isExist()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 177
    add-int/lit8 v2, v2, 0x1

    .line 174
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 182
    .end local v0           #ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    :cond_1
    const/4 v4, 0x4

    if-gt v2, v4, :cond_2

    .line 183
    iget-object v4, p0, Lcom/android/settings/fmm/SimChangeAlert$1$1;->this$1:Lcom/android/settings/fmm/SimChangeAlert$1;

    iget-object v4, v4, Lcom/android/settings/fmm/SimChangeAlert$1;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    #getter for: Lcom/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v4}, Lcom/android/settings/fmm/SimChangeAlert;->access$300(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04007a

    iget-object v6, p0, Lcom/android/settings/fmm/SimChangeAlert$1$1;->this$1:Lcom/android/settings/fmm/SimChangeAlert$1;

    iget-object v6, v6, Lcom/android/settings/fmm/SimChangeAlert$1;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    #getter for: Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/settings/fmm/SimChangeAlert;->access$200(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 184
    .local v1, MinusLayout:Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/android/settings/fmm/SimChangeAlert$1$1;->this$1:Lcom/android/settings/fmm/SimChangeAlert$1;

    iget-object v4, v4, Lcom/android/settings/fmm/SimChangeAlert$1;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    #getter for: Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/settings/fmm/SimChangeAlert;->access$200(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 186
    iget-object v4, p0, Lcom/android/settings/fmm/SimChangeAlert$1$1;->this$1:Lcom/android/settings/fmm/SimChangeAlert$1;

    iget-object v4, v4, Lcom/android/settings/fmm/SimChangeAlert$1;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    #getter for: Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/settings/fmm/SimChangeAlert;->access$200(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/widget/LinearLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fmm/SimChangeAlert$1$1;->this$1:Lcom/android/settings/fmm/SimChangeAlert$1;

    iget-object v5, v5, Lcom/android/settings/fmm/SimChangeAlert$1;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    #getter for: Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/settings/fmm/SimChangeAlert;->access$200(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    .line 187
    .restart local v0       #ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    iget-object v4, p0, Lcom/android/settings/fmm/SimChangeAlert$1$1;->this$1:Lcom/android/settings/fmm/SimChangeAlert$1;

    iget-object v4, v4, Lcom/android/settings/fmm/SimChangeAlert$1;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    #getter for: Lcom/android/settings/fmm/SimChangeAlert;->mText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/settings/fmm/SimChangeAlert;->access$100(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    .line 190
    .end local v0           #ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    .end local v1           #MinusLayout:Landroid/widget/LinearLayout;
    :goto_1
    return-void

    .line 189
    :cond_2
    iget-object v4, p0, Lcom/android/settings/fmm/SimChangeAlert$1$1;->this$1:Lcom/android/settings/fmm/SimChangeAlert$1;

    iget-object v4, v4, Lcom/android/settings/fmm/SimChangeAlert$1;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v4}, Lcom/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f09092a

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
