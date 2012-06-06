.class public Lcom/android/OriginalSettings/fmm/AlertRecipients;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "AlertRecipients.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private PlusLayout:Lcom/android/OriginalSettings/fmm/RecipientsPlusView;

.field private mContent:Landroid/widget/LinearLayout;

.field private mMessage:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/fmm/AlertRecipients;)Lcom/android/OriginalSettings/fmm/RecipientsPlusView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/OriginalSettings/fmm/AlertRecipients;->PlusLayout:Lcom/android/OriginalSettings/fmm/RecipientsPlusView;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/OriginalSettings/fmm/AlertRecipients;->mMessage:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fmm/AlertRecipients;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b072b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 105
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 111
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 93
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/OriginalSettings/fmm/AlertRecipients;->PlusLayout:Lcom/android/OriginalSettings/fmm/RecipientsPlusView;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->SetContactNumber(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 50
    const v3, 0x7f04007f

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 52
    .local v2, view:Landroid/view/View;
    const v3, 0x7f080195

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/OriginalSettings/fmm/AlertRecipients;->mContent:Landroid/widget/LinearLayout;

    .line 54
    const v3, 0x7f080196

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 55
    .local v1, buttonOk:Landroid/widget/Button;
    new-instance v3, Lcom/android/OriginalSettings/fmm/AlertRecipients$1;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/fmm/AlertRecipients$1;-><init>(Lcom/android/OriginalSettings/fmm/AlertRecipients;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v3, 0x7f040045

    iget-object v4, p0, Lcom/android/OriginalSettings/fmm/AlertRecipients;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;

    iput-object v3, p0, Lcom/android/OriginalSettings/fmm/AlertRecipients;->PlusLayout:Lcom/android/OriginalSettings/fmm/RecipientsPlusView;

    .line 65
    iget-object v3, p0, Lcom/android/OriginalSettings/fmm/AlertRecipients;->mContent:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/OriginalSettings/fmm/AlertRecipients;->PlusLayout:Lcom/android/OriginalSettings/fmm/RecipientsPlusView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 67
    const v3, 0x7f08009d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 68
    .local v0, ContactButton:Landroid/widget/ImageButton;
    new-instance v3, Lcom/android/OriginalSettings/fmm/AlertRecipients$2;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/fmm/AlertRecipients$2;-><init>(Lcom/android/OriginalSettings/fmm/AlertRecipients;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v3, 0x7f08009f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/OriginalSettings/fmm/AlertRecipients;->mMessage:Landroid/widget/EditText;

    .line 84
    iget-object v3, p0, Lcom/android/OriginalSettings/fmm/AlertRecipients;->mMessage:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 86
    return-object v2
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 116
    return-void
.end method
