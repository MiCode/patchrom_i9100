.class public Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeTips;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "PowerSavingModeTips.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v5, 0x7f040060

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeTips;->setContentView(I)V

    .line 33
    const v5, 0x7f080113

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeTips;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 34
    .local v3, systemcategorytext:Landroid/widget/TextView;
    const v5, 0x7f080114

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeTips;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 35
    .local v4, systemsummarytext:Landroid/widget/TextView;
    const v5, 0x7f080115

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeTips;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 36
    .local v0, etccategorytext:Landroid/widget/TextView;
    const v5, 0x7f080116

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeTips;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 37
    .local v1, etcsummarytext:Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeTips;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b07a7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-void
.end method
