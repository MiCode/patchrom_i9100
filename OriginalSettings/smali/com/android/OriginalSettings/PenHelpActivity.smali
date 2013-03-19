.class public Lcom/android/settings/PenHelpActivity;
.super Landroid/app/Activity;
.source "PenHelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private img1:Landroid/widget/ImageView;

.field private img2:Landroid/widget/ImageView;

.field private img3:Landroid/widget/ImageView;

.field private img4:Landroid/widget/ImageView;

.field private img5:Landroid/widget/ImageView;

.field private mAni1:Landroid/graphics/drawable/AnimationDrawable;

.field private mAni2:Landroid/graphics/drawable/AnimationDrawable;

.field private mAni3:Landroid/graphics/drawable/AnimationDrawable;

.field private mAni4:Landroid/graphics/drawable/AnimationDrawable;

.field private mAni5:Landroid/graphics/drawable/AnimationDrawable;

.field private penHelpMenu:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0x8

    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 247
    :goto_0
    return-void

    .line 207
    :sswitch_0
    const v0, 0x7f0b019e

    invoke-virtual {p0, v0}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 211
    :sswitch_1
    const v0, 0x7f0b01a1

    invoke-virtual {p0, v0}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 215
    :sswitch_2
    const v0, 0x7f0b0195

    invoke-virtual {p0, v0}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 219
    :sswitch_3
    const v0, 0x7f0b0198

    invoke-virtual {p0, v0}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 223
    :sswitch_4
    const v0, 0x7f0b01ab

    invoke-virtual {p0, v0}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 227
    :sswitch_5
    const v0, 0x7f0b01b0

    invoke-virtual {p0, v0}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 231
    :sswitch_6
    const v0, 0x7f0b01b3

    invoke-virtual {p0, v0}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni3:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 235
    :sswitch_7
    const v0, 0x7f0b01b6

    invoke-virtual {p0, v0}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni4:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_0

    .line 239
    :sswitch_8
    const v0, 0x7f0b01b8

    invoke-virtual {p0, v0}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni5:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_0

    .line 204
    :sswitch_data_0
    .sparse-switch
        0x7f0b0194 -> :sswitch_2
        0x7f0b0197 -> :sswitch_3
        0x7f0b019d -> :sswitch_0
        0x7f0b01a0 -> :sswitch_1
        0x7f0b01aa -> :sswitch_4
        0x7f0b01af -> :sswitch_5
        0x7f0b01b2 -> :sswitch_6
        0x7f0b01b5 -> :sswitch_7
        0x7f0b01b7 -> :sswitch_8
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/PenHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 58
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "pen_help_menu"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/PenHelpActivity;->penHelpMenu:Ljava/lang/String;

    .line 60
    const-string v2, "hovering"

    iget-object v3, p0, Lcom/android/settings/PenHelpActivity;->penHelpMenu:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    const v2, 0x7f04009e

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->setContentView(I)V

    .line 63
    const v2, 0x7f0b019a

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 64
    .local v0, hoveringButton:Landroid/widget/Button;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setHoverPopupType(I)V

    .line 66
    const v2, 0x7f0b019d

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    .line 67
    iget-object v2, p0, Lcom/android/settings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v2, 0x7f0b01a0

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    .line 69
    iget-object v2, p0, Lcom/android/settings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    .end local v0           #hoveringButton:Landroid/widget/Button;
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const-string v2, "gesture"

    iget-object v3, p0, Lcom/android/settings/PenHelpActivity;->penHelpMenu:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    const v2, 0x7f04009d

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->setContentView(I)V

    .line 73
    const v2, 0x7f0b0194

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    .line 74
    iget-object v2, p0, Lcom/android/settings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v2, 0x7f0b0197

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    .line 76
    iget-object v2, p0, Lcom/android/settings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 86
    :cond_2
    const-string v2, "quickcommand"

    iget-object v3, p0, Lcom/android/settings/PenHelpActivity;->penHelpMenu:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    const v2, 0x7f0400a1

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->setContentView(I)V

    .line 89
    const v2, 0x7f0b01ae

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a46

    invoke-virtual {p0, v4}, Lcom/android/settings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const v2, 0x7f0b01b1

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a47

    invoke-virtual {p0, v4}, Lcom/android/settings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const v2, 0x7f0b01bb

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a4f

    invoke-virtual {p0, v4}, Lcom/android/settings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const v2, 0x7f0b01bc

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a50

    invoke-virtual {p0, v4}, Lcom/android/settings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const v2, 0x7f0b01bd

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "3. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a51

    invoke-virtual {p0, v4}, Lcom/android/settings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const v2, 0x7f0b01be

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "4. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a52

    invoke-virtual {p0, v4}, Lcom/android/settings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const v2, 0x7f0b01c0

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a54

    invoke-virtual {p0, v4}, Lcom/android/settings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const v2, 0x7f0b01c1

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a55

    invoke-virtual {p0, v4}, Lcom/android/settings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const v2, 0x7f0b01c2

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "3. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a56

    invoke-virtual {p0, v4}, Lcom/android/settings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const v2, 0x7f0b01c3

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "4. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a57

    invoke-virtual {p0, v4}, Lcom/android/settings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    const v2, 0x7f0b01aa

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    .line 103
    iget-object v2, p0, Lcom/android/settings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v2, 0x7f0b01af

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    .line 105
    iget-object v2, p0, Lcom/android/settings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v2, 0x7f0b01b2

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/PenHelpActivity;->img3:Landroid/widget/ImageView;

    .line 107
    iget-object v2, p0, Lcom/android/settings/PenHelpActivity;->img3:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v2, 0x7f0b01b5

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/PenHelpActivity;->img4:Landroid/widget/ImageView;

    .line 109
    iget-object v2, p0, Lcom/android/settings/PenHelpActivity;->img4:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v2, 0x7f0b01b7

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/PenHelpActivity;->img5:Landroid/widget/ImageView;

    .line 111
    iget-object v2, p0, Lcom/android/settings/PenHelpActivity;->img5:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 164
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/settings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/android/settings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img3:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/android/settings/PenHelpActivity;->img3:Landroid/widget/ImageView;

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img4:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/android/settings/PenHelpActivity;->img4:Landroid/widget/ImageView;

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img5:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iput-object v1, p0, Lcom/android/settings/PenHelpActivity;->img5:Landroid/widget/ImageView;

    .line 171
    :cond_4
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_5

    .line 172
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 173
    iput-object v1, p0, Lcom/android/settings/PenHelpActivity;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    .line 175
    :cond_5
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_6

    .line 176
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 177
    iput-object v1, p0, Lcom/android/settings/PenHelpActivity;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    .line 179
    :cond_6
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni3:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_7

    .line 180
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni3:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 181
    iput-object v1, p0, Lcom/android/settings/PenHelpActivity;->mAni3:Landroid/graphics/drawable/AnimationDrawable;

    .line 183
    :cond_7
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni4:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_8

    .line 184
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni4:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 185
    iput-object v1, p0, Lcom/android/settings/PenHelpActivity;->mAni4:Landroid/graphics/drawable/AnimationDrawable;

    .line 187
    :cond_8
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni5:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_9

    .line 188
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni5:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 189
    iput-object v1, p0, Lcom/android/settings/PenHelpActivity;->mAni5:Landroid/graphics/drawable/AnimationDrawable;

    .line 197
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/PenHelpActivity;->finish()V

    .line 198
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasFocus"

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 123
    if-eqz p1, :cond_0

    .line 124
    const-string v0, "hovering"

    iget-object v1, p0, Lcom/android/settings/PenHelpActivity;->penHelpMenu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    const v1, 0x7f0202f0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    .line 128
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    const v1, 0x7f0202f1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    const-string v0, "gesture"

    iget-object v1, p0, Lcom/android/settings/PenHelpActivity;->penHelpMenu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    const v1, 0x7f0202ee

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    .line 134
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    const v1, 0x7f0202ef

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    goto :goto_0

    .line 136
    :cond_2
    const-string v0, "quickcommand"

    iget-object v1, p0, Lcom/android/settings/PenHelpActivity;->penHelpMenu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    const v1, 0x7f0202e8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    .line 140
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    const v1, 0x7f0202e9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    .line 143
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img3:Landroid/widget/ImageView;

    const v1, 0x7f0202ea

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img3:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni3:Landroid/graphics/drawable/AnimationDrawable;

    .line 146
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img4:Landroid/widget/ImageView;

    const v1, 0x7f0202eb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img4:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni4:Landroid/graphics/drawable/AnimationDrawable;

    .line 149
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img5:Landroid/widget/ImageView;

    const v1, 0x7f0202ec

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img5:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni5:Landroid/graphics/drawable/AnimationDrawable;

    goto/16 :goto_0
.end method
