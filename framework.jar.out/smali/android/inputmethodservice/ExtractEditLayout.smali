.class public Landroid/inputmethodservice/ExtractEditLayout;
.super Landroid/widget/LinearLayout;
.source "ExtractEditLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;
    }
.end annotation


# instance fields
.field mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

.field mEditButton:Landroid/widget/Button;

.field mExtractActionButton:Landroid/widget/Button;

.field private mIME:Landroid/inputmethodservice/InputMethodService;

.field mMenuPopupHelper:Lcom/android/internal/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Landroid/inputmethodservice/ExtractEditLayout;)Landroid/inputmethodservice/InputMethodService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mIME:Landroid/inputmethodservice/InputMethodService;

    return-object v0
.end method


# virtual methods
.method public finishActionMode()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->finish()V

    .line 81
    :cond_0
    return-void
.end method

.method public isActionModeStarted()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 86
    const v0, 0x10202c0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/ExtractEditLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mExtractActionButton:Landroid/widget/Button;

    .line 87
    const v0, 0x10202c1

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/ExtractEditLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mEditButton:Landroid/widget/Button;

    .line 88
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mEditButton:Landroid/widget/Button;

    new-instance v1, Landroid/inputmethodservice/ExtractEditLayout$1;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/ExtractEditLayout$1;-><init>(Landroid/inputmethodservice/ExtractEditLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-void
.end method

.method public setIME(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .parameter "ime"

    .prologue
    .line 239
    iput-object p1, p0, Landroid/inputmethodservice/ExtractEditLayout;->mIME:Landroid/inputmethodservice/InputMethodService;

    .line 240
    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 3
    .parameter "sourceView"
    .parameter "cb"

    .prologue
    .line 54
    new-instance v0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    invoke-direct {v0, p0, p2}, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;-><init>(Landroid/inputmethodservice/ExtractEditLayout;Landroid/view/ActionMode$Callback;)V

    .line 55
    .local v0, mode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->dispatchOnCreate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->invalidate()V

    .line 57
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout;->mExtractActionButton:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 58
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout;->mEditButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 59
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->refreshDrawableState()V

    .line 60
    iput-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    .line 61
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/ExtractEditLayout;->sendAccessibilityEvent(I)V

    .line 64
    .end local v0           #mode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;
    :goto_0
    return-object v0

    .restart local v0       #mode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
