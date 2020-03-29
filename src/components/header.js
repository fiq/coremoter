import { Link } from "gatsby"
import PropTypes from "prop-types"
import React from "react"

import styles from "./header.module.css"
import { AppBar, Toolbar, IconButton, Typography, Button  } from '@material-ui/core'
import MenuIcon from '@material-ui/icons/Menu'

const Header = ({ siteTitle }) => (
    <header className={styles.header}>
    <AppBar position="static">
    <Toolbar>
      <IconButton>
        <MenuIcon />
      </IconButton>
      <Typography variant="h3">
      {siteTitle}
      </Typography>
    </Toolbar>
    </AppBar>
  </header>
)

Header.propTypes = {
  siteTitle: PropTypes.string,
}

Header.defaultProps = {
  siteTitle: ``,
}

export default Header;