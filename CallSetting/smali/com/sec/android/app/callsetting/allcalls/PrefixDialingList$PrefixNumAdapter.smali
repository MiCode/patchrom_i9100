.class Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;
.super Landroid/widget/BaseAdapter;
.source "PrefixDialingList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrefixNumAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private mInflater:Landroid/view/LayoutInflater;

.field private prefixNumList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;Landroid/app/Activity;Ljava/util/ArrayList;)V
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
            "Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 701
    .local p3, _prefixNumList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 703
    iput-object p2, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->context:Landroid/app/Activity;

    .line 704
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 705
    iput-object p3, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->prefixNumList:Ljava/util/ArrayList;

    .line 707
    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 694
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->prefixNumList:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->prefixNumList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 718
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->prefixNumList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 724
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 731
    move-object v2, p2

    .line 733
    .local v2, v:Landroid/view/View;
    if-nez v2, :cond_1

    .line 734
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f03000e

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 735
    new-instance v3, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$ViewHolder;-><init>(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;)V

    .line 737
    .local v3, viewHolder:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$ViewHolder;
    const v4, 0x7f080031

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 738
    const v4, 0x7f080033

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    .line 739
    const v4, 0x7f080032

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$ViewHolder;->radio_layout:Landroid/widget/LinearLayout;

    .line 740
    const v4, 0x7f080030

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    .line 742
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 744
    const-string v4, "getView"

    const-string v6, "convertView is null"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->prefixNumList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;

    .line 750
    .local v1, item:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;
    iget-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;->prefix_num:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 751
    iget v0, v1, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;->checked:I

    .line 753
    .local v0, checked:I
    iget-object v6, v3, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v6, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 755
    const-string v6, "getView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "prefix idx : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " prefixNum = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->prefixNumList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;

    iget-object v4, v4, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;->prefix_num:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$ViewHolder;->radio_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 758
    iget-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$ViewHolder;->radio_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 760
    :cond_0
    iget-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$ViewHolder;->radio_layout:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$1;

    invoke-direct {v5, p0, v1}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$1;-><init>(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 793
    iget-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$2;

    invoke-direct {v5, p0, v1}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$2;-><init>(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 812
    iget-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$3;

    invoke-direct {v5, p0, v1}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$3;-><init>(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 839
    return-object v2

    .line 746
    .end local v0           #checked:I
    .end local v1           #item:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;
    .end local v3           #viewHolder:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$ViewHolder;
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$ViewHolder;

    .restart local v3       #viewHolder:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$ViewHolder;
    goto :goto_0

    .restart local v0       #checked:I
    .restart local v1       #item:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;
    :cond_2
    move v4, v5

    .line 753
    goto :goto_1
.end method
