.class Landroid/widget/RemoteViews$TextViewSizeAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextViewSizeAction"
.end annotation


# static fields
.field public static final TAG:I = 0xd


# instance fields
.field size:F

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field units:I

.field viewId:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IIF)V
    .locals 1
    .parameter
    .parameter "viewId"
    .parameter "units"
    .parameter "size"

    .prologue
    .line 1216
    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1217
    iput p2, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->viewId:I

    .line 1218
    iput p3, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->units:I

    .line 1219
    iput p4, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->size:F

    .line 1220
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .parameter
    .parameter "parcel"

    .prologue
    .line 1222
    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->viewId:I

    .line 1224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->units:I

    .line 1225
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->size:F

    .line 1226
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 4
    .parameter "root"
    .parameter "rootParent"
    .parameter "handler"

    .prologue
    .line 1237
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1238
    .local v0, context:Landroid/content/Context;
    iget v2, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->viewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1239
    .local v1, target:Landroid/widget/TextView;
    if-nez v1, :cond_0

    .line 1241
    :goto_0
    return-void

    .line 1240
    :cond_0
    iget v2, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->units:I

    iget v3, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->size:F

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 1229
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1230
    iget v0, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1231
    iget v0, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->units:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1232
    iget v0, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->size:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1233
    return-void
.end method
