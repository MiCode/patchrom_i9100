.class Lcom/sec/android/app/fm/RemoveChannelActivity$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "RemoveChannelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/RemoveChannelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/fm/RemoveChannelActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 642
    iput-object p1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$MyAdapter;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 643
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$MyAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 644
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$MyAdapter;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$600(Lcom/sec/android/app/fm/RemoveChannelActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 651
    if-nez p1, :cond_0

    .line 652
    const/4 v0, 0x0

    .line 653
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$MyAdapter;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$600(Lcom/sec/android/app/fm/RemoveChannelActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 657
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .parameter "arg0"
    .parameter "view"
    .parameter "arg2"

    .prologue
    .line 662
    iget-object v10, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$MyAdapter;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$600(Lcom/sec/android/app/fm/RemoveChannelActivity;)Ljava/util/ArrayList;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;

    .line 663
    .local v1, chInfo:Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;
    iget-object v2, v1, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;->channel:Lcom/sec/android/app/fm/data/Channel;

    .line 664
    .local v2, channel:Lcom/sec/android/app/fm/data/Channel;
    if-nez p2, :cond_0

    .line 665
    iget-object v10, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$MyAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f030006

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 667
    :cond_0
    iget-object v10, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$MyAdapter;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->setChanFreqWidth(Landroid/view/View;)V

    .line 669
    const v10, 0x7f07000b

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 672
    .local v6, imgFavIcon:Landroid/widget/ImageView;
    const v10, 0x7f07000a

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 675
    .local v7, imgSpkIcon:Landroid/widget/ImageView;
    const v10, 0x7f07000c

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 676
    .local v5, imgDelIcon:Landroid/widget/CheckBox;
    const v10, 0x7f070009

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 678
    .local v9, txtChannelName:Landroid/widget/TextView;
    const v10, 0x7f070008

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 681
    .local v8, txtChannelFreq:Landroid/widget/TextView;
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 682
    iget-boolean v10, v1, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;->willDeleted:Z

    invoke-virtual {v5, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 683
    invoke-static {}, Lcom/sec/android/app/fm/FMRadioFeature;->GetFrequencySpace()I

    move-result v10

    const/16 v11, 0x32

    if-ne v10, v11, :cond_1

    .line 684
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "%.2f"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget v14, v2, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " MHz"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "%.2f"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget v14, v2, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " MHz"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 686
    .local v3, desc:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 687
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 688
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 697
    :goto_0
    iget-object v10, v2, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 698
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 699
    iget-boolean v10, v2, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    if-eqz v10, :cond_2

    .line 700
    const v10, 0x7f020098

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 708
    :goto_1
    :try_start_0
    sget-object v10, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v10}, Lcom/sec/android/app/fm/MainActivity;->getCurrentChannel()F

    move-result v10

    iget v11, v2, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    cmpl-float v10, v10, v11

    if-nez v10, :cond_3

    .line 714
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 730
    :goto_2
    invoke-static {}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$800()Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    :goto_3
    return-object p2

    .line 691
    .end local v3           #desc:Ljava/lang/String;
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v2, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " MHz"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v2, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " MHz "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 693
    .restart local v3       #desc:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 694
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 695
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 702
    :cond_2
    const v10, 0x7f020097

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 727
    :cond_3
    const/16 v10, 0x8

    :try_start_1
    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 731
    :catch_0
    move-exception v4

    .line 733
    .local v4, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 734
    :catch_1
    move-exception v10

    goto :goto_3
.end method
