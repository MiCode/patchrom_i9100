.class Lcom/sec/android/app/fm/TagsActivity$TagAdapter;
.super Landroid/widget/BaseAdapter;
.source "TagsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/TagsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TagAdapter"
.end annotation


# instance fields
.field private holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

.field private inflater:Landroid/view/LayoutInflater;

.field private tagList:Lcom/sec/android/app/fm/ui/RTPTagList;

.field final synthetic this$0:Lcom/sec/android/app/fm/TagsActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/fm/TagsActivity;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 181
    iput-object p1, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->this$0:Lcom/sec/android/app/fm/TagsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 182
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 183
    iput-object v1, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->tagList:Lcom/sec/android/app/fm/ui/RTPTagList;

    .line 184
    new-instance v0, Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    invoke-direct {v0, v1}, Lcom/sec/android/app/fm/TagsActivity$TagHolder;-><init>(Lcom/sec/android/app/fm/TagsActivity$1;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    .line 185
    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/fm/TagsActivity$TagAdapter;)Lcom/sec/android/app/fm/TagsActivity$TagHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    return-object v0
.end method

.method private isPhoneNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 344
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "9"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    :cond_0
    const/4 v0, 0x1

    .line 352
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->tagList:Lcom/sec/android/app/fm/ui/RTPTagList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->tagList:Lcom/sec/android/app/fm/ui/RTPTagList;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/RTPTagList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 202
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v11, 0x7f0200ad

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 208
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030022

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 210
    const v4, 0x7f0700d6

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 211
    .local v0, categoryListLayout:Landroid/widget/LinearLayout;
    iget-object v5, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    const v4, 0x7f0700d7

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->title:Landroid/widget/TextView;

    .line 212
    iget-object v5, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    const v4, 0x7f0700d8

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->info:Landroid/widget/TextView;

    .line 213
    iget-object v5, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    const v4, 0x7f0700d9

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, v5, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    .line 215
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 217
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iput-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    .line 219
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->tagList:Lcom/sec/android/app/fm/ui/RTPTagList;

    invoke-virtual {v4, p1}, Lcom/sec/android/app/fm/ui/RTPTagList;->getTag(I)Lcom/sec/android/app/fm/ui/RTPTag;

    move-result-object v3

    .line 221
    .local v3, tag:Lcom/sec/android/app/fm/ui/RTPTag;
    invoke-virtual {v3}, Lcom/sec/android/app/fm/ui/RTPTag;->getTagCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 287
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    const v5, 0x7f0200f2

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 289
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->info:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/sec/android/app/fm/ui/RTPTag;->getInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 293
    .local v2, p:Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/ImageButton;->measure(II)V

    .line 294
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v1

    .line 295
    .local v1, imageWidth:I
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->this$0:Lcom/sec/android/app/fm/TagsActivity;

    #getter for: Lcom/sec/android/app/fm/TagsActivity;->screenWidth:I
    invoke-static {v4}, Lcom/sec/android/app/fm/TagsActivity;->access$200(Lcom/sec/android/app/fm/TagsActivity;)I

    move-result v4

    sub-int/2addr v4, v1

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 296
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    new-instance v5, Lcom/sec/android/app/fm/TagsActivity$TagAdapter$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/fm/TagsActivity$TagAdapter$1;-><init>(Lcom/sec/android/app/fm/TagsActivity$TagAdapter;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    return-object p2

    .line 223
    .end local v1           #imageWidth:I
    .end local v2           #p:Landroid/view/ViewGroup$LayoutParams;
    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    const v5, 0x7f0200ae

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 224
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 225
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->title:Landroid/widget/TextView;

    const v5, 0x7f0a009e

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 228
    :pswitch_2
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    const v5, 0x7f0200ae

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 229
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 230
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->title:Landroid/widget/TextView;

    const v5, 0x7f0a009f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 233
    :pswitch_3
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    const v5, 0x7f0200f0

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 234
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 235
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->title:Landroid/widget/TextView;

    const v5, 0x7f0a00a0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 238
    :pswitch_4
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    const v5, 0x7f0200f0

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 239
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 240
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->title:Landroid/widget/TextView;

    const v5, 0x7f0a00a1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 243
    :pswitch_5
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    const v5, 0x7f0200f0

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 244
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 245
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->title:Landroid/widget/TextView;

    const v5, 0x7f0a00a2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 248
    :pswitch_6
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    const v5, 0x7f0200af

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 249
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 250
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->title:Landroid/widget/TextView;

    const v5, 0x7f0a00a1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 253
    :pswitch_7
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    const v5, 0x7f0200af

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 254
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 255
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->title:Landroid/widget/TextView;

    const v5, 0x7f0a00a2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 258
    :pswitch_8
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    invoke-virtual {v4, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 259
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 260
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->title:Landroid/widget/TextView;

    const v5, 0x7f0a00a0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 263
    :pswitch_9
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    invoke-virtual {v4, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 264
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 265
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->title:Landroid/widget/TextView;

    const v5, 0x7f0a00a1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 269
    :pswitch_a
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    invoke-virtual {v4, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 270
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 271
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->title:Landroid/widget/TextView;

    const v5, 0x7f0a00a2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 275
    :pswitch_b
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->title:Landroid/widget/TextView;

    const v5, 0x7f0a00a3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 276
    invoke-virtual {v3}, Lcom/sec/android/app/fm/ui/RTPTag;->getInfo()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 277
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 278
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    const v5, 0x7f0200af

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_0

    .line 280
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 281
    iget-object v4, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    iget-object v4, v4, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->link:Landroid/widget/ImageButton;

    const v5, 0x7f0200ae

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_0

    .line 221
    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method public setTagAdapter(ILcom/sec/android/app/fm/ui/RTPTagList;)V
    .locals 1
    .parameter "category"
    .parameter "baseTagList"

    .prologue
    .line 357
    new-instance v0, Lcom/sec/android/app/fm/ui/RTPTagList;

    invoke-direct {v0, p1, p2}, Lcom/sec/android/app/fm/ui/RTPTagList;-><init>(ILcom/sec/android/app/fm/ui/RTPTagList;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->tagList:Lcom/sec/android/app/fm/ui/RTPTagList;

    .line 358
    return-void
.end method
