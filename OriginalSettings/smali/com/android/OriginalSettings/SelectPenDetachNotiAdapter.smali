.class public Lcom/android/settings/SelectPenDetachNotiAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SelectPenDetachNotiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field mInflater:Landroid/view/LayoutInflater;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field mPenNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, objects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 43
    iput-object v0, p0, Lcom/android/settings/SelectPenDetachNotiAdapter;->context:Landroid/content/Context;

    .line 46
    iput-object v0, p0, Lcom/android/settings/SelectPenDetachNotiAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 49
    iput-object v0, p0, Lcom/android/settings/SelectPenDetachNotiAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SelectPenDetachNotiAdapter;->mPenNotificationList:Ljava/util/ArrayList;

    .line 58
    iput-object p1, p0, Lcom/android/settings/SelectPenDetachNotiAdapter;->context:Landroid/content/Context;

    .line 59
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/SelectPenDetachNotiAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 62
    iget-object v0, p0, Lcom/android/settings/SelectPenDetachNotiAdapter;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 63
    iput-object p4, p0, Lcom/android/settings/SelectPenDetachNotiAdapter;->mPenNotificationList:Ljava/util/ArrayList;

    .line 64
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 69
    const-string v1, "SelectPenDetachNotiAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getView / position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    if-nez p2, :cond_0

    .line 74
    iget-object v1, p0, Lcom/android/settings/SelectPenDetachNotiAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400f3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 75
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 80
    .local v0, v:Landroid/widget/TextView;
    :goto_0
    iget-object v1, p0, Lcom/android/settings/SelectPenDetachNotiAdapter;->context:Landroid/content/Context;

    const v2, 0x1030042

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 81
    iget-object v1, p0, Lcom/android/settings/SelectPenDetachNotiAdapter;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    return-object v0

    .end local v0           #v:Landroid/widget/TextView;
    :cond_0
    move-object v0, p2

    .line 77
    check-cast v0, Landroid/widget/TextView;

    .restart local v0       #v:Landroid/widget/TextView;
    goto :goto_0
.end method
