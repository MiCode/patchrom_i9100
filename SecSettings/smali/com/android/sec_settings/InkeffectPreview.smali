.class public Lcom/android/sec_settings/InkeffectPreview;
.super Landroid/app/Activity;
.source "InkeffectPreview.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static mInkcolorItem:[Ljava/lang/String;


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mInkEffectHelptext:Landroid/widget/TextView;

.field mInkEffectdrawble:[I

.field mInkEffectdrawble_h:[I

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/sec_settings/InkeffectPreview;->mInkEffectdrawble:[I

    .line 59
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/sec_settings/InkeffectPreview;->mInkEffectdrawble_h:[I

    return-void

    .line 48
    :array_0
    .array-data 0x4
        0x3ct 0x2t 0x2t 0x7ft
        0x38t 0x2t 0x2t 0x7ft
        0x34t 0x2t 0x2t 0x7ft
        0x32t 0x2t 0x2t 0x7ft
        0x30t 0x2t 0x2t 0x7ft
        0x36t 0x2t 0x2t 0x7ft
        0x3at 0x2t 0x2t 0x7ft
        0x2et 0x2t 0x2t 0x7ft
    .end array-data

    .line 59
    :array_1
    .array-data 0x4
        0x3dt 0x2t 0x2t 0x7ft
        0x39t 0x2t 0x2t 0x7ft
        0x35t 0x2t 0x2t 0x7ft
        0x33t 0x2t 0x2t 0x7ft
        0x31t 0x2t 0x2t 0x7ft
        0x37t 0x2t 0x2t 0x7ft
        0x3bt 0x2t 0x2t 0x7ft
        0x2ft 0x2t 0x2t 0x7ft
    .end array-data
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v2, 0x7f040071

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/InkeffectPreview;->setContentView(I)V

    .line 76
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    sput-object v2, Lcom/android/sec_settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    .line 77
    sget-object v2, Lcom/android/sec_settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/sec_settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090d3b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 78
    sget-object v2, Lcom/android/sec_settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/sec_settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090d3c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 79
    sget-object v2, Lcom/android/sec_settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/sec_settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090d3d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 80
    sget-object v2, Lcom/android/sec_settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/android/sec_settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090d3e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 81
    sget-object v2, Lcom/android/sec_settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/android/sec_settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090d3f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 82
    sget-object v2, Lcom/android/sec_settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/android/sec_settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090d40

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 83
    sget-object v2, Lcom/android/sec_settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/android/sec_settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090d41

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 84
    sget-object v2, Lcom/android/sec_settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/android/sec_settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090d42

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 86
    invoke-virtual {p0}, Lcom/android/sec_settings/InkeffectPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering_ink_effect"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 87
    .local v1, mInkEffectColor:I
    const v2, 0x7f0b00ea

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/InkeffectPreview;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/sec_settings/InkeffectPreview;->mImageView:Landroid/widget/ImageView;

    .line 89
    invoke-virtual {p0}, Lcom/android/sec_settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v7, :cond_1

    .line 90
    iget-object v2, p0, Lcom/android/sec_settings/InkeffectPreview;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/sec_settings/InkeffectPreview;->mInkEffectdrawble:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 94
    :goto_0
    const v2, 0x7f0b0113

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/InkeffectPreview;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/sec_settings/InkeffectPreview;->mInkEffectHelptext:Landroid/widget/TextView;

    .line 96
    const v2, 0x7f0b00c9

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/InkeffectPreview;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/sec_settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    .line 97
    iget-object v2, p0, Lcom/android/sec_settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x7f040072

    sget-object v5, Lcom/android/sec_settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    iget-object v2, p0, Lcom/android/sec_settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 99
    iget-object v2, p0, Lcom/android/sec_settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/sec_settings/InkeffectPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_ink_effect"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 100
    iget-object v2, p0, Lcom/android/sec_settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 101
    iget-object v2, p0, Lcom/android/sec_settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 103
    invoke-static {p0}, Lcom/android/sec_settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    const v2, 0x7f0b0170

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/InkeffectPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 105
    .local v0, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    .end local v0           #layout:Landroid/widget/LinearLayout;
    :cond_0
    return-void

    .line 92
    :cond_1
    iget-object v2, p0, Lcom/android/sec_settings/InkeffectPreview;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/sec_settings/InkeffectPreview;->mInkEffectdrawble_h:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/sec_settings/InkeffectPreview;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 133
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f120002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 134
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f09012d

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 135
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f09050b

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 137
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/android/sec_settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 115
    iget-object v1, p0, Lcom/android/sec_settings/InkeffectPreview;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/sec_settings/InkeffectPreview;->mInkEffectdrawble:[I

    aget v2, v2, p3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 118
    :goto_0
    const-string v1, "InkeffectPreview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_1
    return-void

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/android/sec_settings/InkeffectPreview;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/sec_settings/InkeffectPreview;->mInkEffectdrawble_h:[I

    aget v2, v2, p3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "InkeffectPreview"

    const-string v2, "could not persist preview setting"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 126
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 142
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 152
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 144
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/sec_settings/InkeffectPreview;->finish()V

    goto :goto_0

    .line 148
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/sec_settings/InkeffectPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering_ink_effect"

    iget-object v3, p0, Lcom/android/sec_settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 149
    invoke-virtual {p0}, Lcom/android/sec_settings/InkeffectPreview;->finish()V

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x7f0b0415
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
