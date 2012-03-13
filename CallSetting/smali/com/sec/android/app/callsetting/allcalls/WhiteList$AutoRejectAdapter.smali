.class Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;
.super Landroid/widget/BaseAdapter;
.source "WhiteList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/callsetting/allcalls/WhiteList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoRejectAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private autoRejectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/app/Activity;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList;Landroid/app/Activity;Ljava/util/ArrayList;)V
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
            "Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 833
    .local p3, _autoRejectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 835
    iput-object p2, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->context:Landroid/app/Activity;

    .line 836
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 837
    iput-object p3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    .line 839
    return-void
.end method

.method private drawDeleteScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 858
    new-instance v2, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$ViewHolder;-><init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;)V

    .line 859
    .local v2, viewHolder:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$ViewHolder;
    move-object v1, p2

    .line 861
    .local v1, v:Landroid/view/View;
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;

    .line 862
    .local v0, item:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;
    if-eqz v0, :cond_1

    .line 863
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03001a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 865
    const v3, 0x7f08003e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    .line 867
    const v3, 0x7f08003f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 869
    const v3, 0x7f08000d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v2, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 871
    iget-object v3, v2, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 873
    iget-object v3, v2, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 874
    iget-object v3, v2, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;->contact_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 876
    :cond_0
    iget-object v3, v2, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 878
    :cond_1
    return-object v1
.end method

.method private drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 884
    new-instance v3, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$ViewHolder;-><init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;)V

    .line 885
    .local v3, viewHolder:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$ViewHolder;
    move-object v2, p2

    .line 887
    .local v2, v:Landroid/view/View;
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "autoreject idx : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " rejectNum = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;

    iget-object v4, v4, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->log(Ljava/lang/String;)V
    invoke-static {v5, v4}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$2200(Lcom/sec/android/app/callsetting/allcalls/WhiteList;Ljava/lang/String;)V

    .line 890
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;

    .line 892
    .local v1, item:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;
    if-eqz v1, :cond_1

    .line 893
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f03001b

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 895
    const v4, 0x7f080013

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    .line 898
    const v4, 0x7f080014

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 900
    const v4, 0x7f080017

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 902
    const v4, 0x7f080016

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$ViewHolder;->checkbox_layout:Landroid/widget/LinearLayout;

    .line 904
    const v4, 0x7f080012

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    .line 906
    iget-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$ViewHolder;->checkbox_layout:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$1;

    invoke-direct {v5, p0, v1}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$1;-><init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 936
    iget-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$2;

    invoke-direct {v5, p0, v1}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$2;-><init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 955
    iget-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$3;

    invoke-direct {v5, p0, v1}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$3;-><init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 986
    iget-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 987
    iget-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;->contact_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 989
    :cond_0
    iget-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 990
    const/4 v0, 0x0

    .line 992
    .local v0, checked:I
    iget v0, v1, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;->checked:I

    .line 994
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mScreenType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mScreenType:I
    invoke-static {v6}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$1500(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "position = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " checked = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$2200(Lcom/sec/android/app/callsetting/allcalls/WhiteList;Ljava/lang/String;)V

    .line 997
    iget-object v5, v3, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    if-lez v0, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v5, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1000
    .end local v0           #checked:I
    :cond_1
    return-object v2

    .line 997
    .restart local v0       #checked:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 848
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 822
    invoke-virtual {p0, p1}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->getItem(I)Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 853
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1006
    const/4 v0, 0x0

    .line 1007
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mScreenType:I
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$1500(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1008
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1012
    :goto_0
    return-object v0

    .line 1010
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->drawDeleteScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method
