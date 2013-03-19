.class public Lcom/android/settings/fmm/RecipientsMinusView;
.super Landroid/widget/LinearLayout;
.source "RecipientsMinusView.java"


# instance fields
.field private CurrentView:Landroid/widget/LinearLayout;

.field private VisibleView:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fmm/RecipientsMinusView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/fmm/RecipientsMinusView;->CurrentView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/fmm/RecipientsMinusView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/settings/fmm/RecipientsMinusView;->VisibleView:Z

    return p1
.end method


# virtual methods
.method public getPhoneNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    const v1, 0x7f0b0135

    invoke-virtual {p0, v1}, Lcom/android/settings/fmm/RecipientsMinusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 67
    .local v0, PhoneNumber:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isExist()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/settings/fmm/RecipientsMinusView;->VisibleView:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 44
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/fmm/RecipientsMinusView;->VisibleView:Z

    .line 46
    const v1, 0x7f0b0147

    invoke-virtual {p0, v1}, Lcom/android/settings/fmm/RecipientsMinusView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/fmm/RecipientsMinusView;->CurrentView:Landroid/widget/LinearLayout;

    .line 48
    const v1, 0x7f0b014a

    invoke-virtual {p0, v1}, Lcom/android/settings/fmm/RecipientsMinusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 49
    .local v0, MinusButton:Landroid/widget/ImageView;
    new-instance v1, Lcom/android/settings/fmm/RecipientsMinusView$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fmm/RecipientsMinusView$1;-><init>(Lcom/android/settings/fmm/RecipientsMinusView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method

.method public setFocus()V
    .locals 2

    .prologue
    .line 76
    const v1, 0x7f0b0135

    invoke-virtual {p0, v1}, Lcom/android/settings/fmm/RecipientsMinusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 77
    .local v0, PhoneNumber:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 78
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 79
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 2
    .parameter "Number"

    .prologue
    .line 71
    const v1, 0x7f0b0135

    invoke-virtual {p0, v1}, Lcom/android/settings/fmm/RecipientsMinusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 72
    .local v0, PhoneNumber:Landroid/widget/EditText;
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method
