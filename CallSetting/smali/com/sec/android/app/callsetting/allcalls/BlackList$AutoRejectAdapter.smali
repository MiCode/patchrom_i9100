.class Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;
.super Landroid/widget/BaseAdapter;
.source "BlackList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/callsetting/allcalls/BlackList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoRejectAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private autoRejectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/app/Activity;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/callsetting/allcalls/BlackList;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "_context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 668
    .local p3, _autoRejectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 670
    iput-object p2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->context:Landroid/app/Activity;

    .line 671
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 672
    iput-object p3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    .line 674
    return-void
.end method

.method private drawDeleteScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 693
    new-instance v2, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;)V

    .line 694
    .local v2, viewHolder:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;
    move-object v1, p2

    .line 696
    .local v1, v:Landroid/view/View;
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    .line 697
    .local v0, item:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;
    if-eqz v0, :cond_1

    .line 698
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030002

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 700
    const v3, 0x7f08000e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    .line 702
    const/high16 v3, 0x101

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 704
    const v3, 0x7f08000d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v2, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 706
    iget-object v3, v2, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 707
    const v3, 0x1010001

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 710
    iget-object v3, v2, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 711
    iget-object v3, v2, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->contact_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    :cond_0
    iget-object v3, v2, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    iget v3, v0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->matched:I

    if-nez v3, :cond_2

    .line 716
    iget-object v3, v2, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v4, 0x7f070020

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 726
    :cond_1
    :goto_0
    return-object v1

    .line 718
    :cond_2
    iget v3, v0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->matched:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 719
    iget-object v3, v2, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v4, 0x7f070021

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 720
    :cond_3
    iget v3, v0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->matched:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 721
    iget-object v3, v2, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v4, 0x7f070022

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 722
    :cond_4
    iget v3, v0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->matched:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 723
    iget-object v3, v2, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v4, 0x7f070023

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f080017

    const v8, 0x7f080014

    const/4 v5, 0x1

    .line 731
    new-instance v3, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;)V

    .line 732
    .local v3, viewHolder:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;
    move-object v2, p2

    .line 734
    .local v2, v:Landroid/view/View;
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "autoreject idx : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " rejectNum = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    iget-object v4, v4, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/sec/android/app/callsetting/allcalls/BlackList;->log(Ljava/lang/String;)V
    invoke-static {v6, v4}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$800(Lcom/sec/android/app/callsetting/allcalls/BlackList;Ljava/lang/String;)V

    .line 737
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    .line 739
    .local v1, item:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;
    if-eqz v1, :cond_2

    .line 741
    if-nez p1, :cond_3

    .line 742
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030005

    invoke-virtual {v4, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 744
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 746
    const v4, 0x7f080018

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    .line 748
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 751
    iget-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    new-instance v6, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$1;

    invoke-direct {v6, p0, v1}, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$1;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;)V

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 776
    iget-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$2;

    invoke-direct {v6, p0, v1}, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$2;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 902
    :goto_0
    iget-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 903
    iget-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->contact_name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 905
    :cond_0
    iget-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 907
    if-eqz p1, :cond_1

    .line 908
    iget v4, v1, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->matched:I

    if-nez v4, :cond_4

    .line 909
    iget-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v6, 0x7f070020

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 918
    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 920
    .local v0, checked:I
    iget v0, v1, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->checked:I

    .line 922
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mScreenType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mScreenType:I
    invoke-static {v7}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$300(Lcom/sec/android/app/callsetting/allcalls/BlackList;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "position = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " checked = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/sec/android/app/callsetting/allcalls/BlackList;->log(Ljava/lang/String;)V
    invoke-static {v4, v6}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$800(Lcom/sec/android/app/callsetting/allcalls/BlackList;Ljava/lang/String;)V

    .line 925
    iget-object v6, v3, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    if-lez v0, :cond_7

    move v4, v5

    :goto_2
    invoke-virtual {v6, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 928
    .end local v0           #checked:I
    :cond_2
    return-object v2

    .line 804
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030004

    invoke-virtual {v4, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 805
    const v4, 0x7f080013

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    .line 807
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 809
    const v4, 0x7f080015

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 811
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 813
    const v4, 0x7f080012

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    .line 815
    iget-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    new-instance v6, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$3;

    invoke-direct {v6, p0, v1}, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$3;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;)V

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 844
    iget-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$4;

    invoke-direct {v6, p0, v1}, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$4;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 871
    iget-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$5;

    invoke-direct {v6, p0, v1}, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$5;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0

    .line 911
    :cond_4
    iget v4, v1, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->matched:I

    if-ne v4, v5, :cond_5

    .line 912
    iget-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v6, 0x7f070021

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 913
    :cond_5
    iget v4, v1, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->matched:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_6

    .line 914
    iget-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v6, 0x7f070022

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 915
    :cond_6
    iget v4, v1, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->matched:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_1

    .line 916
    iget-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v6, 0x7f070023

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 925
    .restart local v0       #checked:I
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_2
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 683
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 657
    invoke-virtual {p0, p1}, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->getItem(I)Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 688
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 934
    const/4 v0, 0x0

    .line 935
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mScreenType:I
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$300(Lcom/sec/android/app/callsetting/allcalls/BlackList;)I

    move-result v1

    if-nez v1, :cond_0

    .line 936
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 940
    :goto_0
    return-object v0

    .line 938
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->drawDeleteScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method
