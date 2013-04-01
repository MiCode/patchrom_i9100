.class Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;
.super Landroid/widget/BaseAdapter;
.source "TagsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/TagsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MusicAdapter"
.end annotation


# instance fields
.field private holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

.field private inflater:Landroid/view/LayoutInflater;

.field private musicTagListArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/fm/ui/RTPTagList;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/fm/TagsActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/fm/TagsActivity;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 46
    iput-object p1, p0, Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;->this$0:Lcom/sec/android/app/fm/TagsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 47
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 48
    iput-object v1, p0, Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;->musicTagListArray:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    invoke-direct {v0, v1}, Lcom/sec/android/app/fm/TagsActivity$TagHolder;-><init>(Lcom/sec/android/app/fm/TagsActivity$1;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    .line 50
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;->musicTagListArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 67
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v11, 0x0

    .line 74
    iget-object v8, p0, Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;->inflater:Landroid/view/LayoutInflater;

    const v9, 0x7f030023

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 76
    const v8, 0x7f0700da

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 77
    .local v2, musicListLayout:Landroid/widget/LinearLayout;
    iget-object v9, p0, Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    const v8, 0x7f0700db

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v9, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->title:Landroid/widget/TextView;

    .line 78
    iget-object v9, p0, Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    const v8, 0x7f0700dc

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v9, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->info:Landroid/widget/TextView;

    .line 79
    iget-object v9, p0, Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    const v8, 0x7f0700dd

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, v9, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    .line 81
    iget-object v8, p0, Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    invoke-virtual {p2, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iput-object v8, p0, Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    .line 85
    iget-object v8, p0, Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;->musicTagListArray:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/fm/ui/RTPTagList;

    .line 87
    .local v5, tagList:Lcom/sec/android/app/fm/ui/RTPTagList;
    const/4 v6, 0x0

    .line 88
    .local v6, title:Ljava/lang/String;
    const/4 v1, 0x0

    .line 89
    .local v1, info:Ljava/lang/String;
    const/4 v7, 0x0

    .line 91
    .local v7, tmp:Ljava/lang/String;
    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Lcom/sec/android/app/fm/ui/RTPTagList;->getTagWithCode(I)Lcom/sec/android/app/fm/ui/RTPTag;

    move-result-object v4

    .local v4, tag:Lcom/sec/android/app/fm/ui/RTPTag;
    if-eqz v4, :cond_0

    .line 93
    invoke-virtual {v4}, Lcom/sec/android/app/fm/ui/RTPTag;->getInfo()Ljava/lang/String;

    move-result-object v7

    .line 94
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 95
    move-object v1, v7

    .line 97
    :cond_0
    const/16 v8, 0x9

    invoke-virtual {v5, v8}, Lcom/sec/android/app/fm/ui/RTPTagList;->getTagWithCode(I)Lcom/sec/android/app/fm/ui/RTPTag;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 99
    invoke-virtual {v4}, Lcom/sec/android/app/fm/ui/RTPTag;->getInfo()Ljava/lang/String;

    move-result-object v7

    .line 100
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 101
    move-object v1, v7

    .line 103
    :cond_1
    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Lcom/sec/android/app/fm/ui/RTPTagList;->getTagWithCode(I)Lcom/sec/android/app/fm/ui/RTPTag;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 105
    invoke-virtual {v4}, Lcom/sec/android/app/fm/ui/RTPTag;->getInfo()Ljava/lang/String;

    move-result-object v7

    .line 106
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 107
    move-object v1, v7

    .line 109
    :cond_2
    iget-object v8, p0, Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v8, v8, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    invoke-virtual {v8, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 111
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lcom/sec/android/app/fm/ui/RTPTagList;->getTagWithCode(I)Lcom/sec/android/app/fm/ui/RTPTag;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 113
    invoke-virtual {v4}, Lcom/sec/android/app/fm/ui/RTPTag;->getInfo()Ljava/lang/String;

    move-result-object v7

    .line 114
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 115
    move-object v6, v7

    .line 116
    iget-object v8, p0, Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v8, v8, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    invoke-virtual {v8, v6}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 120
    :cond_3
    iget-object v8, p0, Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;->this$0:Lcom/sec/android/app/fm/TagsActivity;

    #getter for: Lcom/sec/android/app/fm/TagsActivity;->hasMusicHub:Z
    invoke-static {v8}, Lcom/sec/android/app/fm/TagsActivity;->access$100(Lcom/sec/android/app/fm/TagsActivity;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 121
    iget-object v8, p0, Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v8, v8, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    invoke-virtual {v8, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 122
    iget-object v8, p0, Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v8, v8, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    const v9, 0x7f0200ac

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 123
    iget-object v8, p0, Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v8, v8, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    const v9, 0x7f0200f2

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 124
    iget-object v8, p0, Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v8, v8, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    new-instance v9, Lcom/sec/android/app/fm/TagsActivity$MusicAdapter$1;

    invoke-direct {v9, p0}, Lcom/sec/android/app/fm/TagsActivity$MusicAdapter$1;-><init>(Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    :goto_0
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 150
    .local v3, p:Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, 0x0

    .line 151
    .local v0, imageWidth:I
    iget-object v8, p0, Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;->this$0:Lcom/sec/android/app/fm/TagsActivity;

    #getter for: Lcom/sec/android/app/fm/TagsActivity;->hasMusicHub:Z
    invoke-static {v8}, Lcom/sec/android/app/fm/TagsActivity;->access$100(Lcom/sec/android/app/fm/TagsActivity;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 152
    iget-object v8, p0, Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v8, v8, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    invoke-virtual {v8, v11, v11}, Landroid/widget/ImageButton;->measure(II)V

    .line 153
    iget-object v8, p0, Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v8, v8, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    invoke-virtual {v8}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v8

    mul-int/lit8 v0, v8, 0x2

    .line 155
    :cond_4
    iget-object v8, p0, Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;->this$0:Lcom/sec/android/app/fm/TagsActivity;

    #getter for: Lcom/sec/android/app/fm/TagsActivity;->screenWidth:I
    invoke-static {v8}, Lcom/sec/android/app/fm/TagsActivity;->access$200(Lcom/sec/android/app/fm/TagsActivity;)I

    move-result v8

    sub-int/2addr v8, v0

    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 157
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v8, p0, Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v8, v8, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v8, p0, Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v8, v8, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->info:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    return-object p2

    .line 145
    .end local v0           #imageWidth:I
    .end local v3           #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    iget-object v8, p0, Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v8, v8, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTagListArray(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/fm/ui/RTPTagList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, tagListArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/fm/ui/RTPTagList;>;"
    iput-object p1, p0, Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;->musicTagListArray:Ljava/util/ArrayList;

    .line 168
    return-void
.end method
