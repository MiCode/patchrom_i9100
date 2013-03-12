.class public Lcom/android/internal/view/menu/MenuDialogHelper;
.super Ljava/lang/Object;
.source "MenuDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/android/internal/view/menu/MenuPresenter$Callback;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mIsSetContextMenuZOrderToTop:Z

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field mPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

.field private mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mIsSetContextMenuZOrderToTop:Z

    .line 44
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 45
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 167
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 193
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 194
    return-void
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .parameter "menu"
    .parameter "allMenusAreClosing"

    .prologue
    .line 176
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_1

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuDialogHelper;->dismiss()V

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 182
    :cond_2
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/ListMenuPresenter;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 172
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 119
    const/16 v4, 0x52

    if-eq p2, v4, :cond_0

    const/4 v4, 0x4

    if-ne p2, v4, :cond_2

    .line 120
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 122
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 123
    .local v2, win:Landroid/view/Window;
    if-eqz v2, :cond_2

    .line 124
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 125
    .local v0, decor:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 126
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 127
    .local v1, ds:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    .line 128
    invoke-virtual {v1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 150
    .end local v0           #decor:Landroid/view/View;
    .end local v1           #ds:Landroid/view/KeyEvent$DispatcherState;
    .end local v2           #win:Landroid/view/Window;
    :goto_0
    return v3

    .line 133
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 134
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 135
    .restart local v2       #win:Landroid/view/Window;
    if-eqz v2, :cond_2

    .line 136
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 137
    .restart local v0       #decor:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 138
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 139
    .restart local v1       #ds:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 140
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4, v3}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 141
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 150
    .end local v0           #decor:Landroid/view/View;
    .end local v1           #ds:Landroid/view/KeyEvent$DispatcherState;
    .end local v2           #win:Landroid/view/Window;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, p3, v4}, Lcom/android/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v3

    goto :goto_0
.end method

.method public onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .locals 1
    .parameter "subMenu"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    move-result v0

    .line 189
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContextMenuZOrderToTop(Z)V
    .locals 0
    .parameter "isTop"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mIsSetContextMenuZOrderToTop:Z

    .line 52
    return-void
.end method

.method public setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 156
    return-void
.end method

.method public show(Landroid/os/IBinder;)V
    .locals 9
    .parameter "windowToken"

    .prologue
    const/4 v8, 0x1

    .line 62
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 65
    .local v3, menu:Lcom/android/internal/view/menu/MenuBuilder;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 67
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 68
    .local v4, outValue:Landroid/util/TypedValue;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x10103fd

    invoke-virtual {v5, v6, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v4, Landroid/util/TypedValue;->data:I

    if-eqz v5, :cond_1

    .line 70
    new-instance v5, Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x1090111

    invoke-direct {v5, v6, v7}, Lcom/android/internal/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    .line 76
    :goto_0
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v5, p0}, Lcom/android/internal/view/menu/ListMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 77
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v6, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v5, v6}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 78
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v5}, Lcom/android/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 81
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderView()Landroid/view/View;

    move-result-object v1

    .line 82
    .local v1, headerView:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 84
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 91
    :goto_1
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 94
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    .line 95
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 96
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 98
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 101
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    iget-boolean v5, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mIsSetContextMenuZOrderToTop:Z

    if-eqz v5, :cond_3

    .line 103
    const/16 v5, 0x7d8

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 110
    :goto_2
    if-eqz p1, :cond_0

    .line 111
    iput-object p1, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 113
    :cond_0
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x2

    or-int/2addr v5, v6

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 115
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 116
    return-void

    .line 73
    .end local v1           #headerView:Landroid/view/View;
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    new-instance v5, Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x1090099

    invoke-direct {v5, v6, v7}, Lcom/android/internal/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    goto :goto_0

    .line 87
    .restart local v1       #headerView:Landroid/view/View;
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 106
    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_3
    const/16 v5, 0x3eb

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_2
.end method
