var LiWithTooltip = React.createClass({
    render: function () {
        var tooltip = <ReactBootstrap.Tooltip>{this.props.tooltip}</ReactBootstrap.Tooltip>;
        return (
            <ReactBootstrap.OverlayTrigger placement="bottom" overlay={tooltip} delayShow={300} delayHide={150}>
                <a href={this.props.href}>{this.props.children}</a>
            </ReactBootstrap.OverlayTrigger>
        );
    }
});
