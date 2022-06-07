import classNames from 'classnames';
import React from 'react';
import PropTypes from 'prop-types';

const Button = props => props.href
    ? <a {...props} className={classNames('Button', props.classNames)} />
    : <button {...props} className={classNames('Button', props.classNames)} />;


Button.propTypes = {
    href: PropTypes.string,
};

export default Button