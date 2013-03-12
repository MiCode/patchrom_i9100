.class public Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CircleMissedEventListAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field mIsMissedCall:Z

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/sec/CircleMissedEventData;",
            ">;"
        }
    .end annotation
.end field

.field private m_inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "isMissedCall"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/sec/CircleMissedEventData;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/sec/CircleMissedEventData;>;"
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;->m_inflater:Landroid/view/LayoutInflater;

    .line 38
    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;->mList:Ljava/util/ArrayList;

    .line 44
    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;->mList:Ljava/util/ArrayList;

    .line 45
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;->m_inflater:Landroid/view/LayoutInflater;

    .line 46
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;->mContext:Landroid/content/Context;

    .line 47
    iput-boolean p3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;->mIsMissedCall:Z

    .line 48
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/internal/policy/impl/sec/CircleMissedEventData;
    .locals 1
    .parameter "position"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;->getItem(I)Lcom/android/internal/policy/impl/sec/CircleMissedEventData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 64
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 72
    if-nez p2, :cond_2

    .line 73
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;->mIsMissedCall:Z

    if-eqz v10, :cond_1

    .line 74
    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;->m_inflater:Landroid/view/LayoutInflater;

    const v11, 0x109005c

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 82
    .local v9, view:Landroid/view/View;
    :goto_0
    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;

    .line 83
    .local v2, data:Lcom/android/internal/policy/impl/sec/CircleMissedEventData;
    if-eqz v2, :cond_0

    .line 84
    const v10, 0x1020301

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 85
    .local v0, contact_view:Landroid/widget/TextView;
    const v10, 0x1020063

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 86
    .local v5, date_view:Landroid/widget/TextView;
    iget-object v10, v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;->name:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 89
    const v7, 0x10400a3

    .line 93
    .local v7, res:I
    :goto_1
    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, format:Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-direct {v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 95
    .local v4, dateFormatter:Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    iget-wide v10, v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;->date:J

    invoke-direct {v3, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 96
    .local v3, date:Ljava/util/Date;
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 97
    .local v8, time:Ljava/lang/String;
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;->mIsMissedCall:Z

    if-nez v10, :cond_0

    .line 99
    const v10, 0x1020002

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 100
    .local v1, content_view:Landroid/widget/TextView;
    iget-object v10, v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;->content:Ljava/lang/String;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .end local v0           #contact_view:Landroid/widget/TextView;
    .end local v1           #content_view:Landroid/widget/TextView;
    .end local v3           #date:Ljava/util/Date;
    .end local v4           #dateFormatter:Ljava/text/SimpleDateFormat;
    .end local v5           #date_view:Landroid/widget/TextView;
    .end local v6           #format:Ljava/lang/String;
    .end local v7           #res:I
    .end local v8           #time:Ljava/lang/String;
    :cond_0
    return-object v9

    .line 76
    .end local v2           #data:Lcom/android/internal/policy/impl/sec/CircleMissedEventData;
    .end local v9           #view:Landroid/view/View;
    :cond_1
    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;->m_inflater:Landroid/view/LayoutInflater;

    const v11, 0x109006e

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .restart local v9       #view:Landroid/view/View;
    goto :goto_0

    .line 79
    .end local v9           #view:Landroid/view/View;
    :cond_2
    move-object v9, p2

    .restart local v9       #view:Landroid/view/View;
    goto :goto_0

    .line 91
    .restart local v0       #contact_view:Landroid/widget/TextView;
    .restart local v2       #data:Lcom/android/internal/policy/impl/sec/CircleMissedEventData;
    .restart local v5       #date_view:Landroid/widget/TextView;
    :cond_3
    const v7, 0x10400a2

    .restart local v7       #res:I
    goto :goto_1
.end method
