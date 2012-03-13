.class Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;
.super Landroid/widget/BaseAdapter;
.source "AutoRejectList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoRejectAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private autoRejectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/app/Activity;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;Landroid/app/Activity;Ljava/util/ArrayList;)V
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
            "Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 849
    .local p3, _autoRejectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 851
    iput-object p2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;->context:Landroid/app/Activity;

    .line 852
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 853
    iput-object p3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    .line 855
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 866
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 842
    invoke-virtual {p0, p1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;->getItem(I)Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 872
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f080017

    const v7, 0x7f080014

    .line 878
    new-instance v3, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$ViewHolder;-><init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;)V

    .line 879
    .local v3, viewHolder:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$ViewHolder;
    move-object v2, p2

    .line 881
    .local v2, v:Landroid/view/View;
    const-string v5, "getView"

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

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    iget-object v4, v4, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    .line 886
    .local v1, item:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;
    if-eqz v1, :cond_0

    .line 888
    if-nez p1, :cond_1

    .line 889
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030005

    invoke-virtual {v4, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 891
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 892
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 893
    iget-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkbox_layout:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$1;

    invoke-direct {v5, p0, v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$1;-><init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1021
    :goto_0
    iget-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1023
    const/4 v0, 0x0

    .line 1025
    .local v0, checked:I
    iget v0, v1, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;->checked:I

    .line 1027
    const-string v4, "TEST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mState:I
    invoke-static {v6}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$200(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)I

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

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    iget-object v5, v3, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    if-lez v0, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1033
    .end local v0           #checked:I
    :cond_0
    return-object v2

    .line 922
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030004

    invoke-virtual {v4, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 924
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 925
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 926
    const v4, 0x7f080016

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkbox_layout:Landroid/widget/LinearLayout;

    .line 927
    const v4, 0x7f080012

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    .line 929
    iget-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkbox_layout:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$2;

    invoke-direct {v5, p0, v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$2;-><init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 957
    iget-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$3;

    invoke-direct {v5, p0, v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$3;-><init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 992
    iget-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$4;

    invoke-direct {v5, p0, v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$4;-><init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0

    .line 1029
    .restart local v0       #checked:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method
