.class public Lcom/android/OriginalSettings/motion/CommonTryActuallyActivity;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "CommonTryActuallyActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v2, 0x7f040095

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/motion/CommonTryActuallyActivity;->setContentView(I)V

    .line 18
    const v2, 0x7f0801c8

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/motion/CommonTryActuallyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 19
    .local v1, information:Landroid/widget/Button;
    new-instance v2, Lcom/android/OriginalSettings/motion/CommonTryActuallyActivity$1;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/motion/CommonTryActuallyActivity$1;-><init>(Lcom/android/OriginalSettings/motion/CommonTryActuallyActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 28
    const v2, 0x7f0801c9

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/motion/CommonTryActuallyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 29
    .local v0, done:Landroid/widget/Button;
    new-instance v2, Lcom/android/OriginalSettings/motion/CommonTryActuallyActivity$2;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/motion/CommonTryActuallyActivity$2;-><init>(Lcom/android/OriginalSettings/motion/CommonTryActuallyActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    return-void
.end method
