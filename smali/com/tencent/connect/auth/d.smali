.class final Lcom/tencent/connect/auth/d;
.super Lcom/tencent/connect/auth/g;


# instance fields
.field private synthetic b:Lcom/tencent/tauth/IUiListener;

.field private synthetic c:Ljava/lang/Object;

.field private synthetic d:Lcom/tencent/connect/auth/c;


# direct methods
.method constructor <init>(Lcom/tencent/connect/auth/c;Landroid/app/Dialog;Lcom/tencent/tauth/IUiListener;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/connect/auth/d;->d:Lcom/tencent/connect/auth/c;

    iput-object p3, p0, Lcom/tencent/connect/auth/d;->b:Lcom/tencent/tauth/IUiListener;

    iput-object p4, p0, Lcom/tencent/connect/auth/d;->c:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/tencent/connect/auth/g;-><init>(Lcom/tencent/connect/auth/c;Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/connect/auth/d;->d:Lcom/tencent/connect/auth/c;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/c;->a()V

    iget-object v0, p0, Lcom/tencent/connect/auth/d;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/connect/auth/d;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/connect/auth/d;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/connect/auth/d;->b:Lcom/tencent/tauth/IUiListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/connect/auth/d;->b:Lcom/tencent/tauth/IUiListener;

    iget-object v1, p0, Lcom/tencent/connect/auth/d;->c:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
