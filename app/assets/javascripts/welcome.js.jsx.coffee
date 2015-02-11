LiWithTooltip = React.createClass
  render: ->
    tooltip = `<ReactBootstrap.Tooltip><ul className="list-ul"><li>4 eggs</li><li>1 cup vegetable oil</li><li>2/3 cup water</li><li>3 cups white sugar</li><li>4 eggs</li><li>1 cup vegetable oil</li></ul><div className="cook-time">45 min</div></ReactBootstrap.Tooltip>`
    `<ReactBootstrap.OverlayTrigger placement="bottom" overlay={tooltip} delayShow={300} delayHide={150}>
      <a href={this.props.href}>{this.props.children}</a>
    </ReactBootstrap.OverlayTrigger>`

window.LiWithTooltip = LiWithTooltip
