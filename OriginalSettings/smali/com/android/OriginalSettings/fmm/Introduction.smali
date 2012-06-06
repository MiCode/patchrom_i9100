.class public Lcom/android/OriginalSettings/fmm/Introduction;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "Introduction.java"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mDoNotShow:Landroid/widget/CheckBox;

.field private mLinkMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/fmm/Introduction;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/OriginalSettings/fmm/Introduction;->mDoNotShow:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 47
    const v1, 0x7f040049

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0800c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/OriginalSettings/fmm/Introduction;->mLinkMessage:Landroid/widget/TextView;

    .line 49
    const v1, 0x7f0800c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/OriginalSettings/fmm/Introduction;->mDoNotShow:Landroid/widget/CheckBox;

    .line 50
    const v1, 0x7f0800c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/OriginalSettings/fmm/Introduction;->mButton:Landroid/widget/Button;

    .line 52
    iget-object v1, p0, Lcom/android/OriginalSettings/fmm/Introduction;->mLinkMessage:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/OriginalSettings/fmm/Introduction;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b071c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <a href=http://www.samsungdive.com>http://www.samsungdive.com</a></body></html>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v1, p0, Lcom/android/OriginalSettings/fmm/Introduction;->mLinkMessage:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 56
    iget-object v1, p0, Lcom/android/OriginalSettings/fmm/Introduction;->mButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/OriginalSettings/fmm/Introduction$1;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/fmm/Introduction$1;-><init>(Lcom/android/OriginalSettings/fmm/Introduction;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-object v0
.end method
