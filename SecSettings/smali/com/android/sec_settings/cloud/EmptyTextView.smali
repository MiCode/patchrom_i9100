.class public Lcom/android/sec_settings/cloud/EmptyTextView;
.super Landroid/widget/TextView;
.source "EmptyTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-direct {p0}, Lcom/android/sec_settings/cloud/EmptyTextView;->init()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-direct {p0}, Lcom/android/sec_settings/cloud/EmptyTextView;->init()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0}, Lcom/android/sec_settings/cloud/EmptyTextView;->init()V

    .line 34
    return-void
.end method

.method private init()V
    .locals 7

    .prologue
    const v6, 0x7f090e1f

    .line 65
    invoke-virtual {p0}, Lcom/android/sec_settings/cloud/EmptyTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 66
    .local v1, temptext:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/sec_settings/cloud/EmptyTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    .local v0, res:Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 68
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, text:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/sec_settings/cloud/EmptyTextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .end local v2           #text:Ljava/lang/String;
    :cond_0
    return-void
.end method
