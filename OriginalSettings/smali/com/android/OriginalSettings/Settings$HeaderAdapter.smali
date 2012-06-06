.class Lcom/android/OriginalSettings/Settings$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBluetoothEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 470
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 471
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 475
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/OriginalSettings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    .line 476
    new-instance v0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;

    .line 477
    return-void
.end method

.method static getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 4
    .parameter "header"

    .prologue
    .line 434
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 435
    const/4 v0, 0x0

    .line 439
    :goto_0
    return v0

    .line 436
    :cond_0
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f080269

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f08026a

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 437
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 439
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 445
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 446
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v10, 0x0

    const v8, 0x1020016

    const v7, 0x1020010

    const/4 v9, 0x0

    .line 482
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 483
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    .line 484
    .local v1, headerType:I
    const/4 v4, 0x0

    .line 486
    .local v4, view:Landroid/view/View;
    if-nez p2, :cond_1

    .line 487
    new-instance v2, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;

    invoke-direct {v2, v10}, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/OriginalSettings/Settings$1;)V

    .line 488
    .local v2, holder:Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;
    packed-switch v1, :pswitch_data_0

    .line 518
    :goto_0
    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 525
    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 553
    :goto_2
    return-object v4

    .line 490
    :pswitch_0
    new-instance v4, Landroid/widget/TextView;

    .end local v4           #view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1010208

    invoke-direct {v4, v5, v10, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .restart local v4       #view:Landroid/view/View;
    move-object v5, v4

    .line 492
    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_0

    .line 496
    :pswitch_1
    iget-object v5, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f04006d

    invoke-virtual {v5, v6, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 498
    const v5, 0x7f08002f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v2, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 499
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 501
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 503
    const v5, 0x7f080152

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    iput-object v5, v2, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto :goto_0

    .line 507
    :pswitch_2
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->theme:I

    const v6, 0x1030128

    if-ne v5, v6, :cond_0

    .line 508
    iget-object v5, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x10900ba

    invoke-virtual {v5, v6, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 511
    :goto_3
    const v5, 0x1020006

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v2, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 512
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 514
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    goto :goto_0

    .line 510
    :cond_0
    iget-object v5, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x1090072

    invoke-virtual {v5, v6, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    goto :goto_3

    .line 520
    .end local v2           #holder:Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;
    :cond_1
    move-object v4, p2

    .line 521
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;

    .restart local v2       #holder:Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;
    goto/16 :goto_1

    .line 527
    :pswitch_3
    iget-object v5, v2, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 532
    :pswitch_4
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f080269

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    .line 533
    iget-object v5, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    iget-object v6, v2, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v5, v6}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 541
    :goto_4
    :pswitch_5
    iget-object v5, v2, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v6, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 542
    iget-object v5, v2, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 544
    .local v3, summary:Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 545
    iget-object v5, v2, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 546
    iget-object v5, v2, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 535
    .end local v3           #summary:Ljava/lang/CharSequence;
    :cond_2
    iget-object v5, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;

    iget-object v6, v2, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v5, v6}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto :goto_4

    .line 548
    .restart local v3       #summary:Ljava/lang/CharSequence;
    :cond_3
    iget-object v5, v2, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 488
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 525
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 461
    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 456
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->pause()V

    .line 563
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->pause()V

    .line 564
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->resume()V

    .line 558
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->resume()V

    .line 559
    return-void
.end method
