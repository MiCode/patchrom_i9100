.class public Landroid/widget/Toast;
.super Ljava/lang/Object;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Toast$TN;
    }
.end annotation


# static fields
.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I = 0x0

.field static final TAG:Ljava/lang/String; = "Toast"

.field static final localLOGV:Z

.field private static sService:Landroid/app/INotificationManager;


# instance fields
.field final mContext:Landroid/content/Context;

.field mDuration:I

.field mNextView:Landroid/view/View;

.field final mTN:Landroid/widget/Toast$TN;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    .line 97
    new-instance v0, Landroid/widget/Toast$TN;

    invoke-direct {v0}, Landroid/widget/Toast$TN;-><init>()V

    iput-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    .line 98
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/Toast$TN;->mY:I

    .line 100
    return-void
.end method

.method private static getService()Landroid/app/INotificationManager;
    .locals 1

    .prologue
    .line 338
    sget-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    if-eqz v0, :cond_0

    .line 339
    sget-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    .line 342
    :goto_0
    return-object v0

    .line 341
    :cond_0
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    .line 342
    sget-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    goto :goto_0
.end method

.method public static makeText(Landroid/content/Context;II)Landroid/widget/Toast;
    .locals 1
    .parameter "context"
    .parameter "resId"
    .parameter "duration"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 9
    .parameter "context"
    .parameter "text"
    .parameter "duration"

    .prologue
    const/4 v8, 0x0

    .line 254
    new-instance v2, Landroid/widget/Toast;

    invoke-direct {v2, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 256
    .local v2, result:Landroid/widget/Toast;
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 262
    .local v0, inflate:Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    .line 263
    .local v4, v:Landroid/view/View;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 264
    .local v1, outValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x10103fd

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v1, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 266
    iget v5, v1, Landroid/util/TypedValue;->data:I

    if-eqz v5, :cond_1

    .line 268
    const v5, 0x1090137

    invoke-virtual {v0, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 276
    :cond_0
    :goto_0
    new-instance v5, Landroid/widget/Toast$1;

    invoke-direct {v5, v2}, Landroid/widget/Toast$1;-><init>(Landroid/widget/Toast;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 282
    const v5, 0x102000b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 283
    .local v3, tv:Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iput-object v4, v2, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    .line 286
    iput p2, v2, Landroid/widget/Toast;->mDuration:I

    .line 288
    return-object v2

    .line 272
    .end local v3           #tv:Landroid/widget/TextView;
    :cond_1
    const v5, 0x10900fd

    invoke-virtual {v0, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-virtual {v0}, Landroid/widget/Toast$TN;->hide()V

    .line 141
    :try_start_0
    invoke-static {}, Landroid/widget/Toast;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->cancelToast(Ljava/lang/String;Landroid/app/ITransientNotification;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Landroid/widget/Toast;->mDuration:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mGravity:I

    return v0
.end method

.method public getHorizontalMargin()F
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    return v0
.end method

.method public getVerticalMargin()F
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    return-object v0
.end method

.method public getXOffset()I
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mX:I

    return v0
.end method

.method public getYOffset()I
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mY:I

    return v0
.end method

.method public setDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 169
    iput p1, p0, Landroid/widget/Toast;->mDuration:I

    .line 170
    return-void
.end method

.method public setGravity(III)V
    .locals 1
    .parameter "gravity"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 215
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p1, v0, Landroid/widget/Toast$TN;->mGravity:I

    .line 216
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p2, v0, Landroid/widget/Toast$TN;->mX:I

    .line 217
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p3, v0, Landroid/widget/Toast$TN;->mY:I

    .line 218
    return-void
.end method

.method public setMargin(FF)V
    .locals 1
    .parameter "horizontalMargin"
    .parameter "verticalMargin"

    .prologue
    .line 191
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p1, v0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    .line 192
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p2, v0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    .line 193
    return-void
.end method

.method public setText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 312
    iget-object v0, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 313
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 320
    iget-object v1, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 321
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This Toast was not created with Toast.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 323
    :cond_0
    iget-object v1, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 324
    .local v0, tv:Landroid/widget/TextView;
    if-nez v0, :cond_1

    .line 325
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This Toast was not created with Toast.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 327
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 152
    iput-object p1, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    .line 153
    return-void
.end method

.method public show()V
    .locals 7

    .prologue
    .line 106
    iget-object v4, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-nez v4, :cond_0

    .line 107
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "setView must have been called"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 110
    :cond_0
    invoke-static {}, Landroid/widget/Toast;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 111
    .local v1, service:Landroid/app/INotificationManager;
    iget-object v4, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, pkg:Ljava/lang/String;
    iget-object v2, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    .line 113
    .local v2, tn:Landroid/widget/Toast$TN;
    iget-object v4, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    iput-object v4, v2, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    .line 116
    :try_start_0
    iget v4, p0, Landroid/widget/Toast;->mDuration:I

    invoke-interface {v1, v0, v2, v4}, Landroid/app/INotificationManager;->enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    const-string v4, "eng"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 122
    iget-object v4, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-eqz v4, :cond_1

    const-string v4, "service.gate.enabled"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 123
    iget-object v4, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    const v5, 0x102000b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 124
    .local v3, tv:Landroid/widget/TextView;
    if-eqz v3, :cond_1

    .line 125
    const-string v4, "GATE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<GATE-M>Toast:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</GATE-M>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v3           #tv:Landroid/widget/TextView;
    :cond_1
    return-void

    .line 117
    :catch_0
    move-exception v4

    goto :goto_0
.end method
